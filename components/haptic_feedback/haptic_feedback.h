#include <stdio.h>
#include "driver/ledc.h"
#include "esp_timer.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

void haptic_init(void);
void haptic_feedback(void);