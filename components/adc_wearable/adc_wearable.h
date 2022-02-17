#include <stdio.h>
#include <stdlib.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "driver/gpio.h"
#include "driver/adc.h"
#include "esp_adc_cal.h"

static void print_char_val_type(esp_adc_cal_value_t val_type);
static void check_efuse();

void adc_config(adc_channel_t channel, adc_atten_t atten, adc_unit_t unit);
uint16_t adc_main(adc_channel_t channel, adc_unit_t unit);