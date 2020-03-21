#ifndef _EPD_4IN2_H_
#define _EPD_4IN2_H_

#include "../Config/DEV_Config.h"

// Commands
#define PANEL_SETTING                               0x00
#define POWER_SETTING                               0x01
#define POWER_OFF                                   0x02
#define POWER_OFF_SEQUENCE_SETTING                  0x03
#define POWER_ON                                    0x04
#define POWER_ON_MEASURE                            0x05
#define BOOSTER_SOFT_START                          0x06
#define DEEP_SLEEP                                  0x07
#define DATA_START_TRANSMISSION_1                   0x10
#define DATA_STOP                                   0x11
#define DISPLAY_REFRESH                             0x12
#define DATA_START_TRANSMISSION_2                   0x13
#define VCOM_LUT                                    0x20
#define W2W_LUT                                     0x21
#define B2W_LUT                                     0x22
#define W2B_LUT                                     0x23
#define B2B_LUT                                     0x24
#define VCOM										0x25
#define PLL_CONTROL                                 0x30
#define TEMPERATURE_SENSOR_CALIBRATION              0x40
#define TEMPERATURE_SENSOR_SELECTION                0x41
#define TEMPERATURE_SENSOR_WRITE                    0x42
#define TEMPERATURE_SENSOR_READ                     0x43
#define VCOM_AND_DATA_INTERVAL_SETTING              0x50
#define LOW_POWER_DETECTION                         0x51
#define TCON_SETTING                                0x60
#define RESOLUTION_SETTING                          0x61
#define GET_STATUS                                  0x71
#define AUTO_MEASURE_VCOM                           0x80
#define READ_VCOM_VALUE                             0x81
#define VCM_DC_SETTING                              0x82
#define PARTIAL_WINDOW                              0x90
#define PARTIAL_IN                                  0x91
#define PARTIAL_OUT                                 0x92
#define PROGRAM_MODE                                0xA0
#define ACTIVE_PROGRAM                              0xA1
#define READ_OTP_DATA                               0xA2
#define POWER_SAVING                                0xE3

// Display resolution
#define EPD_4IN2_WIDTH       400
#define EPD_4IN2_HEIGHT      300

void EPD_4IN2_Init(void);
void EPD_4IN2_Clear(void);
void EPD_4IN2_Display(UBYTE *Image);
void EPD_4IN2_Sleep(void);
void EPD_4IN2_PartialDisplay(UWORD X_start, UWORD Y_start, UWORD X_end,
UWORD Y_end, UBYTE *Image);

void EPD_4IN2_Init_4Gray(void);
void EPD_4IN2_4GrayDisplay(const UBYTE *Image);
#endif
