#include "IMU.h"

struct Time			IMUTime = {0};
struct Acc 			IMUAcc = {0};
struct Gyro 		IMUGyro = {0};
struct Angle 		IMUAngle = {0};
struct Mag 			IMUMag = {0};
struct Quaternion	IMUQuaternion = {0};

void uart_config(short uart_port, short txd_pin, short rxd_pin, uint32_t baud_rate, uint16_t buf_size)
{
    const uart_config_t uart_config = {
        .baud_rate = baud_rate,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB,

    };
    const uart_intr_config_t uart_intr = {
        .rxfifo_full_thresh = 1,
        .rx_timeout_thresh = 10,
    };
    uart_intr_config(uart_port, &uart_intr);
    uart_enable_rx_intr(uart_port);
    uart_driver_install(uart_port, buf_size * 2, 0, 0, NULL, 0);
    uart_param_config(uart_port, &uart_config);
    uart_set_pin(uart_port, txd_pin, rxd_pin, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
}