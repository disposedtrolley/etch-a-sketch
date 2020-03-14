#ifndef _DEV_CONFIG_H_
#define _DEV_CONFIG_H_

#include "main.h"
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_gpio.h"
#include <stdint.h>

/**
 * data
 **/
#define UBYTE   uint8_t
#define UWORD   uint16_t
#define UDOUBLE uint32_t

/**
 * e-Paper GPIO
 **/
#define EPD_RST_PIN     RST_GPIO_Port, RST_Pin
#define EPD_DC_PIN      DC_GPIO_Port, DC_Pin
#define EPD_CS_PIN      SPI_CS_GPIO_Port, SPI_CS_Pin
#define EPD_BUSY_PIN    BUSY_GPIO_Port, BUSY_Pin

/**
 * GPIO read and write
 **/
#define DEV_Digital_Write(_pin, _value) HAL_GPIO_WritePin(_pin, _value == 0? GPIO_PIN_RESET:GPIO_PIN_SET)
#define DEV_Digital_Read(_pin) HAL_GPIO_ReadPin(_pin)

/**
 * delay x ms
 **/
#define DEV_Delay_ms(__xms) HAL_Delay(__xms);

void DEV_SPI_WriteByte(UBYTE value);

int DEV_Module_Init(void);
void DEV_Module_Exit(void);
#endif