#include "EPD_4in2.h"
#include "../Config/Debug.h"

static const unsigned char EPD_4IN2_lut_vcom0[] = { 0x00, 0x17, 0x00, 0x00,
		0x00, 0x02, 0x00, 0x17, 0x17, 0x00, 0x00, 0x02, 0x00, 0x0A, 0x01, 0x00,
		0x00, 0x01, 0x00, 0x0E, 0x0E, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, };
static const unsigned char EPD_4IN2_lut_ww[] = { 0x40, 0x17, 0x00, 0x00, 0x00,
		0x02, 0x90, 0x17, 0x17, 0x00, 0x00, 0x02, 0x40, 0x0A, 0x01, 0x00, 0x00,
		0x01, 0xA0, 0x0E, 0x0E, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };
static const unsigned char EPD_4IN2_lut_bw[] = { 0x40, 0x17, 0x00, 0x00, 0x00,
		0x02, 0x90, 0x17, 0x17, 0x00, 0x00, 0x02, 0x40, 0x0A, 0x01, 0x00, 0x00,
		0x01, 0xA0, 0x0E, 0x0E, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };
static const unsigned char EPD_4IN2_lut_wb[] = { 0x80, 0x17, 0x00, 0x00, 0x00,
		0x02, 0x90, 0x17, 0x17, 0x00, 0x00, 0x02, 0x80, 0x0A, 0x01, 0x00, 0x00,
		0x01, 0x50, 0x0E, 0x0E, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };
static const unsigned char EPD_4IN2_lut_bb[] = { 0x80, 0x17, 0x00, 0x00, 0x00,
		0x02, 0x90, 0x17, 0x17, 0x00, 0x00, 0x02, 0x80, 0x0A, 0x01, 0x00, 0x00,
		0x01, 0x50, 0x0E, 0x0E, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };

/******************************partial screen update LUT*********************************/
const unsigned char EPD_4IN2_Partial_lut_vcom1[] = { 0x00, 0x19, 0x01, 0x00,
		0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, };

const unsigned char EPD_4IN2_Partial_lut_ww1[] = { 0x00, 0x19, 0x01, 0x00, 0x00,
		0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };

const unsigned char EPD_4IN2_Partial_lut_bw1[] = { 0x80, 0x19, 0x01, 0x00, 0x00,
		0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };

const unsigned char EPD_4IN2_Partial_lut_wb1[] = { 0x40, 0x19, 0x01, 0x00, 0x00,
		0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };

const unsigned char EPD_4IN2_Partial_lut_bb1[] = { 0x00, 0x19, 0x01, 0x00, 0x00,
		0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };

/******************************gray*********************************/
//0~3 gray
const unsigned char EPD_4IN2_4Gray_lut_vcom[] = { 0x00, 0x0A, 0x00, 0x00, 0x00,
		0x01, 0x60, 0x14, 0x14, 0x00, 0x00, 0x01, 0x00, 0x14, 0x00, 0x00, 0x00,
		0x01, 0x00, 0x13, 0x0A, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00

};
//R21
const unsigned char EPD_4IN2_4Gray_lut_ww[] = { 0x40, 0x0A, 0x00, 0x00, 0x00,
		0x01, 0x90, 0x14, 0x14, 0x00, 0x00, 0x01, 0x10, 0x14, 0x0A, 0x00, 0x00,
		0x01, 0xA0, 0x13, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };
//R22H	r
const unsigned char EPD_4IN2_4Gray_lut_bw[] = { 0x40, 0x0A, 0x00, 0x00, 0x00,
		0x01, 0x90, 0x14, 0x14, 0x00, 0x00, 0x01, 0x00, 0x14, 0x0A, 0x00, 0x00,
		0x01, 0x99, 0x0C, 0x01, 0x03, 0x04, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };
//R23H	w
const unsigned char EPD_4IN2_4Gray_lut_wb[] = { 0x40, 0x0A, 0x00, 0x00, 0x00,
		0x01, 0x90, 0x14, 0x14, 0x00, 0x00, 0x01, 0x00, 0x14, 0x0A, 0x00, 0x00,
		0x01, 0x99, 0x0B, 0x04, 0x04, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };
//R24H	b
const unsigned char EPD_4IN2_4Gray_lut_bb[] = { 0x80, 0x0A, 0x00, 0x00, 0x00,
		0x01, 0x90, 0x14, 0x14, 0x00, 0x00, 0x01, 0x20, 0x14, 0x0A, 0x00, 0x00,
		0x01, 0x50, 0x13, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, };

/******************************************************************************
 function :	Software reset
 parameter:
 ******************************************************************************/
static void EPD_4IN2_Reset(void) {
	DEV_Digital_Write(EPD_RST_PIN, 1);
	DEV_Delay_ms(200);
	DEV_Digital_Write(EPD_RST_PIN, 0);
	DEV_Delay_ms(200);
	DEV_Digital_Write(EPD_RST_PIN, 1);
	DEV_Delay_ms(200);
}

/******************************************************************************
 function :	send command
 parameter:
 Reg : Command register
 ******************************************************************************/
static void EPD_4IN2_SendCommand(UBYTE Reg) {
	DEV_Digital_Write(EPD_DC_PIN, 0);
	DEV_Digital_Write(EPD_CS_PIN, 0);
	DEV_SPI_WriteByte(Reg);
	DEV_Digital_Write(EPD_CS_PIN, 1);
}

/******************************************************************************
 function :	send data
 parameter:
 Data : Write data
 ******************************************************************************/
static void EPD_4IN2_SendData(UBYTE Data) {
	DEV_Digital_Write(EPD_DC_PIN, 1);
	DEV_Digital_Write(EPD_CS_PIN, 0);
	DEV_SPI_WriteByte(Data);
	DEV_Digital_Write(EPD_CS_PIN, 1);
}

/******************************************************************************
 function :	Wait until the busy_pin goes LOW
 parameter:
 ******************************************************************************/
void EPD_4IN2_ReadBusy(void) {
	Debug("e-Paper busy\r\n");
	EPD_4IN2_SendCommand(GET_STATUS);
	while (DEV_Digital_Read(EPD_BUSY_PIN) == 0) {      //LOW: idle, HIGH: busy
		EPD_4IN2_SendCommand(GET_STATUS);
		DEV_Delay_ms(100);
	}
	Debug("e-Paper busy release\r\n");
}

/******************************************************************************
 function :	Turn On Display
 parameter:
 ******************************************************************************/
static void EPD_4IN2_TurnOnDisplay(void) {
	EPD_4IN2_SendCommand(DISPLAY_REFRESH);
	DEV_Delay_ms(100);
	EPD_4IN2_ReadBusy();
}

/******************************************************************************
 function :	set the look-up tables
 parameter:
 ******************************************************************************/
static void EPD_4IN2_SetLut(void) {
	UWORD count;
	EPD_4IN2_SendCommand(VCOM_LUT);
	for (count = 0; count < 44; count++) {
		EPD_4IN2_SendData(EPD_4IN2_lut_vcom0[count]);
	}

	EPD_4IN2_SendCommand(W2W_LUT);
	for (count = 0; count < 42; count++) {
		EPD_4IN2_SendData(EPD_4IN2_lut_ww[count]);
	}

	EPD_4IN2_SendCommand(B2W_LUT);
	for (count = 0; count < 42; count++) {
		EPD_4IN2_SendData(EPD_4IN2_lut_bw[count]);
	}

	EPD_4IN2_SendCommand(W2B_LUT);
	for (count = 0; count < 42; count++) {
		EPD_4IN2_SendData(EPD_4IN2_lut_wb[count]);
	}

	EPD_4IN2_SendCommand(B2B_LUT);
	for (count = 0; count < 42; count++) {
		EPD_4IN2_SendData(EPD_4IN2_lut_bb[count]);
	}
}

static void EPD_4IN2_Partial_SetLut(void) {
	unsigned int count;
	EPD_4IN2_SendCommand(VCOM_LUT);
	for (count = 0; count < 44; count++) {
		EPD_4IN2_SendData(EPD_4IN2_Partial_lut_vcom1[count]);
	}

	EPD_4IN2_SendCommand(W2W_LUT);
	for (count = 0; count < 42; count++) {
		EPD_4IN2_SendData(EPD_4IN2_Partial_lut_ww1[count]);
	}

	EPD_4IN2_SendCommand(B2W_LUT);
	for (count = 0; count < 42; count++) {
		EPD_4IN2_SendData(EPD_4IN2_Partial_lut_bw1[count]);
	}

	EPD_4IN2_SendCommand(W2B_LUT);
	for (count = 0; count < 42; count++) {
		EPD_4IN2_SendData(EPD_4IN2_Partial_lut_wb1[count]);
	}

	EPD_4IN2_SendCommand(B2B_LUT);
	for (count = 0; count < 42; count++) {
		EPD_4IN2_SendData(EPD_4IN2_Partial_lut_bb1[count]);
	}
}

//LUT download
static void EPD_4IN2_4Gray_lut(void) {
	unsigned int count;
	{
		EPD_4IN2_SendCommand(VCOM_LUT);
		for (count = 0; count < 42; count++) {
			EPD_4IN2_SendData(EPD_4IN2_4Gray_lut_vcom[count]);
		}

		EPD_4IN2_SendCommand(W2W_LUT);
		for (count = 0; count < 42; count++) {
			EPD_4IN2_SendData(EPD_4IN2_4Gray_lut_ww[count]);
		}

		EPD_4IN2_SendCommand(B2W_LUT);
		for (count = 0; count < 42; count++) {
			EPD_4IN2_SendData(EPD_4IN2_4Gray_lut_bw[count]);
		}

		EPD_4IN2_SendCommand(W2B_LUT);
		for (count = 0; count < 42; count++) {
			EPD_4IN2_SendData(EPD_4IN2_4Gray_lut_wb[count]);
		}

		EPD_4IN2_SendCommand(B2B_LUT);
		for (count = 0; count < 42; count++) {
			EPD_4IN2_SendData(EPD_4IN2_4Gray_lut_bb[count]);
		}

		EPD_4IN2_SendCommand(VCOM);
		for (count = 0; count < 42; count++) {
			EPD_4IN2_SendData(EPD_4IN2_4Gray_lut_ww[count]);
		}
	}
}
/******************************************************************************
 function :	Initialize the e-Paper register
 parameter:
 ******************************************************************************/
void EPD_4IN2_Init(void) {
	EPD_4IN2_Reset();

	EPD_4IN2_SendCommand(POWER_SETTING);
	EPD_4IN2_SendData(0x03);
	EPD_4IN2_SendData(0x00);
	EPD_4IN2_SendData(0x2b);
	EPD_4IN2_SendData(0x2b);

	EPD_4IN2_SendCommand(BOOSTER_SOFT_START);
	EPD_4IN2_SendData(0x17);		//A
	EPD_4IN2_SendData(0x17);		//B
	EPD_4IN2_SendData(0x17);		//C

	EPD_4IN2_SendCommand(POWER_ON);
	EPD_4IN2_ReadBusy();

	EPD_4IN2_SendCommand(PANEL_SETTING);
	EPD_4IN2_SendData(0xbf); // KW-BF   KWR-AF	BWROTP 0f	BWOTP 1f
	EPD_4IN2_SendData(0x0d);

	EPD_4IN2_SendCommand(PLL_CONTROL);
	EPD_4IN2_SendData(0x3C); // 3A 100HZ   29 150Hz 39 200HZ	31 171HZ

	EPD_4IN2_SendCommand(RESOLUTION_SETTING);
	EPD_4IN2_SendData(0x01);
	EPD_4IN2_SendData(0x90); //128
	EPD_4IN2_SendData(0x01);
	EPD_4IN2_SendData(0x2c);

	EPD_4IN2_SendCommand(VCM_DC_SETTING);
	EPD_4IN2_SendData(0x28);

	EPD_4IN2_SendCommand(VCOM_AND_DATA_INTERVAL_SETTING);
	EPD_4IN2_SendData(0x97); // 97white border 77black border		VBDF 17|D7 VBDW 97 VBDB 57		VBDF F7 VBDW 77 VBDB 37  VBDR B7

	EPD_4IN2_SetLut();
}

void EPD_4IN2_Init_4Gray(void) {
	EPD_4IN2_Reset();
	EPD_4IN2_SendCommand(POWER_SETTING);
	EPD_4IN2_SendData(0x03);
	EPD_4IN2_SendData(0x00);       //VGH=20V,VGL=-20V
	EPD_4IN2_SendData(0x2b);       //VDH=15V
	EPD_4IN2_SendData(0x2b);		//VDL=-15V
	EPD_4IN2_SendData(DATA_START_TRANSMISSION_2);

	EPD_4IN2_SendCommand(BOOSTER_SOFT_START);
	EPD_4IN2_SendData(0x17);		//A
	EPD_4IN2_SendData(0x17);		//B
	EPD_4IN2_SendData(0x17);		//C

	EPD_4IN2_SendCommand(POWER_ON);
	EPD_4IN2_ReadBusy();

	EPD_4IN2_SendCommand(PANEL_SETTING);
	EPD_4IN2_SendData(0x3f);		//KW-3f   KWR-2F	BWROTP 0f	BWOTP 1f

	EPD_4IN2_SendCommand(PLL_CONTROL);
	EPD_4IN2_SendData(0x3c);      	//100hz

	EPD_4IN2_SendCommand(RESOLUTION_SETTING);
	EPD_4IN2_SendData(0x01);		//400
	EPD_4IN2_SendData(0x90);
	EPD_4IN2_SendData(0x01);		//300
	EPD_4IN2_SendData(0x2c);

	EPD_4IN2_SendCommand(VCM_DC_SETTING);
	EPD_4IN2_SendData(DISPLAY_REFRESH);

	EPD_4IN2_SendCommand(VCOM_AND_DATA_INTERVAL_SETTING);
	EPD_4IN2_SendData(0x97);
}
/******************************************************************************
 function :	Clear screen
 parameter:
 ******************************************************************************/
void EPD_4IN2_Clear(void) {
	UWORD Width, Height;
	Width = (EPD_4IN2_WIDTH % 8 == 0) ?
			(EPD_4IN2_WIDTH / 8) : (EPD_4IN2_WIDTH / 8 + 1);
	Height = EPD_4IN2_HEIGHT;

	EPD_4IN2_SendCommand(DATA_START_TRANSMISSION_1);
	for (UWORD j = 0; j < Height; j++) {
		for (UWORD i = 0; i < Width; i++) {
			EPD_4IN2_SendData(0xFF);
		}
	}

	EPD_4IN2_SendCommand(DATA_START_TRANSMISSION_2);
	for (UWORD j = 0; j < Height; j++) {
		for (UWORD i = 0; i < Width; i++) {
			EPD_4IN2_SendData(0xFF);
		}
	}
	EPD_4IN2_SendCommand(DISPLAY_REFRESH);
	DEV_Delay_ms(10);
	EPD_4IN2_TurnOnDisplay();
}

/******************************************************************************
 function :	Sends the image buffer in RAM to e-Paper and displays
 parameter:
 ******************************************************************************/
void EPD_4IN2_Display(UBYTE *Image) {
	UWORD Width, Height;
	Width = (EPD_4IN2_WIDTH % 8 == 0) ?
			(EPD_4IN2_WIDTH / 8) : (EPD_4IN2_WIDTH / 8 + 1);
	Height = EPD_4IN2_HEIGHT;

	EPD_4IN2_SendCommand(DATA_START_TRANSMISSION_2);
	for (UWORD j = 0; j < Height; j++) {
		for (UWORD i = 0; i < Width; i++) {
			EPD_4IN2_SendData(Image[i + j * Width]);
		}
	}

	EPD_4IN2_TurnOnDisplay();
}

void EPD_4IN2_PartialDisplay(UWORD X_start, UWORD Y_start, UWORD X_end,
UWORD Y_end, UBYTE *Image) {
	UWORD Width, Height;
	Width = (EPD_4IN2_WIDTH % 8 == 0) ?
			(EPD_4IN2_WIDTH / 8) : (EPD_4IN2_WIDTH / 8 + 1);
	Height = EPD_4IN2_HEIGHT;

	X_start = (X_start % 8 == 0) ? (X_start) : (X_start / 8 * 8 + 8);
	X_end = (X_end % 8 == 0) ? (X_end) : (X_end / 8 * 8 + 8);

	EPD_4IN2_SendCommand(VCOM_AND_DATA_INTERVAL_SETTING);
	EPD_4IN2_SendData(0xf7);
	DEV_Delay_ms(100);

	EPD_4IN2_SendCommand(VCM_DC_SETTING);
	EPD_4IN2_SendData(0x08);
	EPD_4IN2_SendCommand(VCOM_AND_DATA_INTERVAL_SETTING);
	EPD_4IN2_SendData(0x47);
	EPD_4IN2_Partial_SetLut();
	EPD_4IN2_SendCommand(PARTIAL_IN);	//This command makes the display enter partial mode
	EPD_4IN2_SendCommand(PARTIAL_WINDOW);		//resolution setting
	EPD_4IN2_SendData((X_start) / 256);
	EPD_4IN2_SendData((X_start) % 256);   //x-start

	EPD_4IN2_SendData((X_end) / 256);
	EPD_4IN2_SendData((X_end) % 256 - 1);  //x-end

	EPD_4IN2_SendData(Y_start / 256);
	EPD_4IN2_SendData(Y_start % 256);   //y-start

	EPD_4IN2_SendData(Y_end / 256);
	EPD_4IN2_SendData(Y_end % 256 - 1);  //y-end
	EPD_4IN2_SendData(0x28);

	EPD_4IN2_SendCommand(DATA_START_TRANSMISSION_1);	       //writes Old data to SRAM for programming
	for (UWORD j = 0; j < Y_end - Y_start; j++) {
		for (UWORD i = 0; i < (X_end - X_start) / 8; i++) {
			EPD_4IN2_SendData(Image[(Y_start + j) * Width + X_start / 8 + i]);
		}
	}
	EPD_4IN2_SendCommand(DATA_START_TRANSMISSION_2);				 //writes New data to SRAM.
	for (UWORD j = 0; j < Y_end - Y_start; j++) {
		for (UWORD i = 0; i < (X_end - X_start) / 8; i++) {
			EPD_4IN2_SendData(~Image[(Y_start + j) * Width + X_start / 8 + i]);
		}
	}

	EPD_4IN2_SendCommand(DISPLAY_REFRESH);
	DEV_Delay_ms(10);     //The delay here is necessary, 200uS at least!!!
	EPD_4IN2_TurnOnDisplay();
}

void EPD_4IN2_4GrayDisplay(const UBYTE *Image) {
	UDOUBLE i, j, k;
	UBYTE temp1, temp2, temp3;
	/****Color display description****
	 white  gray1  gray2  black
	 DATA_START_TRANSMISSION_1|  01     01     00     00
	 DATA_START_TRANSMISSION_2|  01     00     01     00
	 *********************************/
	EPD_4IN2_SendCommand(DATA_START_TRANSMISSION_1);

	for (i = 0; i < 15000; i++)	               //5808*4  46464
			{
		temp3 = 0;
		for (j = 0; j < 2; j++) {
			temp1 = Image[i * 2 + j];
			for (k = 0; k < 2; k++) {
				temp2 = temp1 & 0xC0;
				if (temp2 == 0xC0)
					temp3 |= 0x01;	               //white
				else if (temp2 == 0x00)
					temp3 |= 0x00;  //black
				else if (temp2 == 0x80)
					temp3 |= 0x01;  //gray1
				else
					//0x40
					temp3 |= 0x00; //gray2
				temp3 <<= 1;

				temp1 <<= 2;
				temp2 = temp1 & 0xC0;
				if (temp2 == 0xC0)  //white
					temp3 |= 0x01;
				else if (temp2 == 0x00) //black
					temp3 |= 0x00;
				else if (temp2 == 0x80)
					temp3 |= 0x01; //gray1
				else
					//0x40
					temp3 |= 0x00;	//gray2
				if (j != 1 || k != 1)
					temp3 <<= 1;

				temp1 <<= 2;
			}

		}
		EPD_4IN2_SendData(temp3);
	}
	// new  data
	EPD_4IN2_SendCommand(DATA_START_TRANSMISSION_2);
	for (i = 0; i < 15000; i++)	               //5808*4  46464
			{
		temp3 = 0;
		for (j = 0; j < 2; j++) {
			temp1 = Image[i * 2 + j];
			for (k = 0; k < 2; k++) {
				temp2 = temp1 & 0xC0;
				if (temp2 == 0xC0)
					temp3 |= 0x01;	               //white
				else if (temp2 == 0x00)
					temp3 |= 0x00;  //black
				else if (temp2 == 0x80)
					temp3 |= 0x00;  //gray1
				else
					//0x40
					temp3 |= 0x01; //gray2
				temp3 <<= 1;

				temp1 <<= 2;
				temp2 = temp1 & 0xC0;
				if (temp2 == 0xC0)  //white
					temp3 |= 0x01;
				else if (temp2 == 0x00) //black
					temp3 |= 0x00;
				else if (temp2 == 0x80)
					temp3 |= 0x00; //gray1
				else
					//0x40
					temp3 |= 0x01;	//gray2
				if (j != 1 || k != 1)
					temp3 <<= 1;

				temp1 <<= 2;
			}

		}
		EPD_4IN2_SendData(temp3);
	}

	EPD_4IN2_4Gray_lut();
	EPD_4IN2_TurnOnDisplay();
}
/******************************************************************************
 function :	Enter sleep mode
 parameter:
 ******************************************************************************/
void EPD_4IN2_Sleep(void) {
	EPD_4IN2_SendCommand(POWER_OFF);
	EPD_4IN2_ReadBusy();
	EPD_4IN2_SendCommand(DEEP_SLEEP);
	EPD_4IN2_SendData(0XA5);
}