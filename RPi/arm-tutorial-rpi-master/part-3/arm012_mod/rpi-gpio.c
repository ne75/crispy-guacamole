
#include <stdint.h>
#include "rpi-gpio.h"

volatile unsigned int* gpio = (unsigned int*)GPIO_BASE;

unsigned int* get_gpio_reg() {
	return gpio;
}