#include "haptic_feedback.h"
#define LEDC_TIMER              LEDC_TIMER_0
#define LEDC_MODE               LEDC_HIGH_SPEED_MODE
#define LEDC_OUTPUT_IO          (15)
#define LEDC_CHANNEL            LEDC_CHANNEL_0
#define LEDC_DUTY_RES           LEDC_TIMER_8_BIT 
#define LEDC_FREQUENCY          (200) 

uint8_t hapticPWM = 0;
short hapticStatus = 0;
unsigned long haptic_previousTime = 0;

void haptic_init(void)
{
    ledc_timer_config_t ledc_timer = {
        .speed_mode       = LEDC_MODE,
        .timer_num        = LEDC_TIMER,
        .duty_resolution  = LEDC_DUTY_RES,
        .freq_hz          = LEDC_FREQUENCY,
        .clk_cfg          = LEDC_AUTO_CLK
    };
    ledc_timer_config(&ledc_timer);

    ledc_channel_config_t ledc_channel = {
        .speed_mode     = LEDC_MODE,
        .channel        = LEDC_CHANNEL,
        .timer_sel      = LEDC_TIMER,
        .intr_type      = LEDC_INTR_DISABLE,
        .gpio_num       = LEDC_OUTPUT_IO,
        .duty           = 0,
        .hpoint         = 0
    };
    ledc_channel_config(&ledc_channel);
}

void haptic_feedback(void)
{
    unsigned long haptic_currentTime = (esp_timer_get_time());
    printf("PWM : %d\t Status : %d\n", hapticPWM, hapticStatus);
    if(haptic_currentTime - haptic_previousTime >= 1)
    {
        haptic_previousTime = haptic_currentTime;
        if(hapticStatus == 0 && hapticPWM <= 255)
        {
            ledc_set_duty(LEDC_MODE, LEDC_CHANNEL, hapticPWM+=2);
            ledc_update_duty(LEDC_MODE, LEDC_CHANNEL);
            if(hapticPWM == 254)
            {
                hapticStatus = 1;
            }
        }
        else if (hapticStatus == 1)
        {
            ledc_set_duty(LEDC_MODE, LEDC_CHANNEL, hapticPWM-=2);
            ledc_update_duty(LEDC_MODE, LEDC_CHANNEL);
            if(hapticPWM == 0)
            {
                hapticStatus = 0;
                vTaskSuspend(NULL);
            }
        }
    }
}

