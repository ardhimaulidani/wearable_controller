#include <unistd.h>

#include <rcl/rcl.h>
#include <rcl/error_handling.h>
#include <rclc/rclc.h>
#include <rclc/executor.h>

#include <uros_network_interfaces.h>
#include <rmw_microros/rmw_microros.h>
#include "uxr/client/config.h"

#include <std_msgs/msg/u_int16_multi_array.h>
#include <std_msgs/msg/float32_multi_array.h>

#include "IMU.h"
#include "adc_wearable.h" 

#define RCCHECK(fn) { rcl_ret_t temp_rc = fn; if((temp_rc != RCL_RET_OK)){printf("Failed status on line %d: %d. Aborting.\n",__LINE__,(int)temp_rc);vTaskDelete(NULL);}}
#define RCSOFTCHECK(fn) { rcl_ret_t temp_rc = fn; if((temp_rc != RCL_RET_OK)){printf("Failed status on line %d: %d. Continuing.\n",__LINE__,(int)temp_rc);}}

#define RX_BUF_SIZE (1024)

#define TXD_PIN (GPIO_NUM_17)
#define RXD_PIN (GPIO_NUM_16)
#define UART_PIN (UART_NUM_2)

#define ADC_UNIT (ADC_UNIT_1)
#define ADC_ATTEN (ADC_ATTEN_DB_6)

// Init publisher
rcl_publisher_t pot_pub;
rcl_publisher_t angle_pub;

xSemaphoreHandle xMutex=NULL;

void thread_pot(void * arg)
{
    std_msgs__msg__UInt16MultiArray pot_msg;

    pot_msg.data.capacity = 3; 
    pot_msg.data.size = 3;
    pot_msg.data.data = (uint16_t*) malloc(pot_msg.data.capacity * sizeof(uint16_t));

    pot_msg.layout.dim.capacity = 3;
    pot_msg.layout.dim.size = 0;
    pot_msg.layout.dim.data = (std_msgs__msg__MultiArrayDimension*) malloc(pot_msg.layout.dim.capacity * sizeof(std_msgs__msg__MultiArrayDimension));


    for(size_t i = 0; i < pot_msg.layout.dim.capacity; i++){
        pot_msg.layout.dim.data[i].label.capacity = 3;
        pot_msg.layout.dim.data[i].label.size = 0;
        pot_msg.layout.dim.data[i].label.data = (char*) malloc(pot_msg.layout.dim.data[i].label.capacity * sizeof(char));
    }   

	while(1){
        pot_msg.data.data[0] = adc_main(ADC_CHANNEL_6, ADC_UNIT);
        pot_msg.data.data[1] = adc_main(ADC_CHANNEL_7, ADC_UNIT);
        pot_msg.data.data[2] = adc_main(ADC_CHANNEL_4, ADC_UNIT);
        
        printf("data: [%d  %d  %d] \n\n", pot_msg.data.data[0], pot_msg.data.data[1], pot_msg.data.data[2]);
        xSemaphoreTake(xMutex, portMAX_DELAY);
        RCSOFTCHECK(rcl_publish(&pot_pub, &pot_msg, NULL));
        xSemaphoreGive(xMutex);
		usleep(10000);
	}
}

void thread_imu(void * arg)
{
    std_msgs__msg__Float32MultiArray angle_msg;

    angle_msg.data.capacity = 2; 
    angle_msg.data.size = 2;
    angle_msg.data.data = (float*) malloc(angle_msg.data.capacity * sizeof(float));

    angle_msg.layout.dim.capacity = 2;
    angle_msg.layout.dim.size = 0;
    angle_msg.layout.dim.data = (std_msgs__msg__MultiArrayDimension*) malloc(angle_msg.layout.dim.capacity * sizeof(std_msgs__msg__MultiArrayDimension));

    for(size_t i = 0; i < angle_msg.layout.dim.capacity; i++){
        angle_msg.layout.dim.data[i].label.capacity = 2;
        angle_msg.layout.dim.data[i].label.size = 0;
        angle_msg.layout.dim.data[i].label.data = (char*) malloc(angle_msg.layout.dim.data[i].label.capacity * sizeof(char));
    }

    //define sensor msg
    uint8_t msg[11] = {0};
    uint8_t *msgnext = msg;

    while(1)
    {  
        uint8_t inbuf[11];
        const int rxBytes = uart_read_bytes(UART_PIN, inbuf, sizeof inbuf, 5/portTICK_RATE_MS);

        if (rxBytes <= 0) continue;
        for (int i = 0; i<rxBytes; i++)
        {
            const uint8_t b = inbuf[i];
            if (b == 0x55)
            {
                msgnext = msg;
                *msgnext++ = b;
            }

            else if (msgnext == msg)
            {
                continue;
            }

            else 
            {  
                //printf("Masuk ke bit 1\n");
                *msgnext++ = b;
                if ((msgnext - msg) == sizeof msg)
                {
                    //printf("masuk switch case\n");
                    switch (msg[1])
                    {
                    case 0x53:
                        IMUAngle.Angle[0] = ((unsigned short) msg[3]<<8) | msg[2];
                        IMUAngle.Angle[1] = ((unsigned short) msg[5]<<8) | msg[4];
                        IMUAngle.Angle[2] = ((unsigned short) msg[7]<<8) | msg[6];
                        IMUAngle.Version = ((unsigned short) msg[9]<<8) | msg[8];
                        angle_msg.data.data[0] = (float)IMUAngle.Angle[0]/32768*180;
                        angle_msg.data.data[1] = (float)IMUAngle.Angle[1]/32768*180;
                        // angle_msg.data.data[2] = (float)IMUAngle.Angle[2]/32768*180;
                        printf("Roll Pitch Yaw : %.3f   %.3f    \n", (float)IMUAngle.Angle[0]/32768*180, (float)IMUAngle.Angle[1]/32768*180);
                        break;
                    msgnext = msg;
                    }
                }
            }
        }
        xSemaphoreTake(xMutex, portMAX_DELAY);    
        RCSOFTCHECK(rcl_publish(&angle_pub, &angle_msg, NULL));
        xSemaphoreGive(xMutex);
        usleep(1250);
    }
}

void microros_task(void * arg)
{
    // //Setup ADC_Wearable
    adc_config(ADC_CHANNEL_6, ADC_ATTEN, ADC_UNIT);
    adc_config(ADC_CHANNEL_7, ADC_ATTEN, ADC_UNIT);
    adc_config(ADC_CHANNEL_4, ADC_ATTEN, ADC_UNIT);

    //Setup UART
    uart_config(UART_PIN, TXD_PIN, RXD_PIN, 115200, RX_BUF_SIZE*2);

    //Initialize micro-ROS allocator
    rcl_allocator_t allocator = rcl_get_default_allocator();

    //Initialize Micro-ROS RMW
	rcl_init_options_t init_options = rcl_get_zero_initialized_init_options();
	RCCHECK(rcl_init_options_init(&init_options, allocator));
	rmw_init_options_t* rmw_options = rcl_init_options_get_rmw_init_options(&init_options);

	// Static Agent IP and port (faster than auto discovery).
	RCCHECK(rmw_uros_options_set_udp_address(CONFIG_MICRO_ROS_AGENT_IP, CONFIG_MICRO_ROS_AGENT_PORT, rmw_options));

    // Initialize support object
    rclc_support_t support;
    RCCHECK(rclc_support_init_with_options(&support, 0, NULL, &init_options, &allocator));
	//RCCHECK(rclc_support_init(&support, 0, NULL, &allocator));
    // Create node object
    rcl_node_t node;
    const char * node_name = "wearable_device";
    const char * namespace = "";

    //Init node
    RCCHECK(rclc_node_init_default(&node, node_name, namespace, &support));

    //Creates a best effort rcl publisher (low waiting time)
    RCCHECK(rclc_publisher_init_best_effort(
    &pot_pub, &node,
    ROSIDL_GET_MSG_TYPE_SUPPORT(std_msgs, msg, UInt16MultiArray), "wearable_pot"));

    RCCHECK(rclc_publisher_init_best_effort(
    &angle_pub, &node,
    ROSIDL_GET_MSG_TYPE_SUPPORT(std_msgs, msg, Float32MultiArray), "wearable_angle"));

    xMutex=xSemaphoreCreateMutex();
    if(xMutex!=NULL)
    {
        xTaskCreate(thread_pot,
            "thread_pot",
            CONFIG_MICRO_ROS_APP_STACK,
            NULL,
            CONFIG_MICRO_ROS_APP_TASK_PRIO,
            NULL);

        xTaskCreate(thread_imu,
            "thread_imu",
            CONFIG_MICRO_ROS_APP_STACK,
            NULL,
            CONFIG_MICRO_ROS_APP_TASK_PRIO + 1,
            NULL);
    }

    while(1)
    {
        sleep(1);
    }

    RCCHECK(rcl_publisher_fini(&angle_pub, &node));
    RCCHECK(rcl_publisher_fini(&pot_pub, &node));
    RCCHECK(rcl_node_fini(&node));
    vTaskDelete(NULL);
}

void app_main(void * arg)
{
    #ifdef UCLIENT_PROFILE_UDP
        ESP_ERROR_CHECK(uros_network_interface_initialize());
    #endif

    xTaskCreate(microros_task,
            "uros_task",
            1024*20,
            NULL,
            CONFIG_MICRO_ROS_APP_TASK_PRIO,
            NULL);
}