//*****************************************************************************
// Program:	 ROHM Sensor Platform Firmware for Q112 Lapis Microcontroller
//		 ROHM Semiconductor USA, LLC
//		 US Design Center
// Started:  July 8th, 2014
// Purpose:	 Firmware for Q112 for Sensor Platform Board 
// Updated:	 July 8th, 2014
//*****************************************************************************
#define DebugSensor	1

// ============================= Sensor Platform Board Specs ============================== 
//	UART to USB/PC:
//		UART to FTDI => B0, B1
//		VBus Det => A2
//	Sensor Interface:
//		I2C => B5, B6
//		ADC => A0, A1
//		GPIO => B2, B3, B4, B7
//	LED Feedback Section:
//		LEDs = C0 to C7
//	Sensor Control Section:
//		DIP Switch = D0 to D3
// ============================= IOT Board Specs ============================== 

//*****************************************************************************
// Microcontroller's connections on the LaPi Development Board to the 
//  Plug 'n Play, Raspberry Pi Compatible, Universal Connectors:
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => 3.3V Power					Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q112 I/O B.6)	Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q112 I/O B.5)*	Pin-06 => GROUND
// Pin-07 => GPIO #04 (Q112 I/O B.2)	Pin-08 => UART-TX  (Q112 I/O B.1)
// Pin-09 => no connection				Pin-10 => UART-RX  (Q112 I/O B.0) 
// Pin-11 => GPIO #17 (Q112 I/O C.0)	Pin-12 => GPIO #18 (Q112 I/O B.7)
// Pin-13 => GPIO #21 (Q112 I/O C.1)	Pin-14 => no connection
// Pin-15 => GPIO #22 (Q112 I/O C.2)	Pin-16 => GPIO #23 (Q112 I/O D.1)
// Pin-17 => no connection				Pin-18 => GPIO #24 (Q112 I/O D.2)
// Pin-19 => SPI-MOSI (Q112 I/O B.4)	Pin-20 => no connection
// Pin-21 => SPI-MISO (Q112 I/O B.3)	Pin-22 => GPIO #25 (Q112 I/O D.3)
// Pin-23 => SPI-SCLK (Q112 I/O B.5)*	Pin-24 => SPI-CS0  (Q112 I/O D.4)
// Pin-25 => no connection				Pin-26 => SPI-CS1  (Q112 I/O D.5)
//
//=============================================================================
//*****************************************************************************

//*****************************************************************************
// Q112 Microcontroller's I/O Pins at J4 on the LaPi Development Board to the
// LaPi Development Board 
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => A.0				Pin-02 => A.1
// Pin-03 => A.2				Pin-04 => B.0
// Pin-05 => B.1				Pin-06 => B.2
// Pin-07 => B.3				Pin-08 => B.4
// Pin-09 => B.5				Pin-10 => B.6 
// Pin-11 => B.7				Pin-12 => C.0
// Pin-13 => C.1				Pin-14 => C.2
// Pin-15 => C.3				Pin-16 => C.4
// Pin-17 => C.5				Pin-18 => C.6
// Pin-19 => C.7				Pin-20 => D.0
// Pin-21 => D.1				Pin-22 => D.2
// Pin-23 => D.3				Pin-24 => D.4
// Pin-25 => D.5				Pin-26 => GROUND
//
//=============================================================================
//*****************************************************************************

//***** PREPROCESSOR DIRECTIVES ***********************************************
// INCLUDED FILES...
// Include Path: common;main;irq;timer;clock;tbc;pwm;uart;

	#include	<ML610112.H>	// Lapis Micro ML610Q112 on LaPi Development Board
	#include	<stdlib.h>		// General-purpose utilities
	#include 	<uart.h>		// UART Function Prototypes
	#include 	<common.h>		// Common Definitions
	#include 	<irq.h>			// IRQ Definitions
	#include 	<mcu.h>			// MCU Definition
	#include	<i2c.h>			// I2C Definition
	//#include 	<clock.h>		// Set System Clock API
	#include 	<tbc.h>			// Set TBC (Timer Based Clock) API
	#include 	<timer.h>		// Timer Macros & APIs
	//#include 	<main.h>		// Clear WDT API
	//#include	<ctype.h>		// Character classification and conversion 
	//#include	<errno.h>		// Error identifiers Library
	//#include	<float.h>		// Numerical limits for floating-point numbers
	//#include	<limits.h>		// Numerical limits for integers
	//#include	<math.h>		// Mathematical functions
	//#include	<muldivu8.h>	// Multiplication and Division accelerator
	//#include	<setjmp.h>		// Global jump (longjmp)
	//#include	<signal.h>		// Signal handling functions
	//#include	<stdarg.h>		// Variable numbers of arguments
	//#include	<stddef.h>		// Standard types and macros 
	#include	<stdio.h>		// I/O-related processing
	//#include	<string.h>		// Character string manipulation routines
	//#include	<yfuns.h>		// 
	//#include	<yvals.h>		// Called for by most Header Files

//*****************************************************************************
 // I/O PIN DATA ALIASES...
// Connections for Q112 Universal Socket
	#define RX 			PB0D 
	#define TX 			PB1D 
	#define I2C_SDA 	PB6D 
	#define I2C_SCL 	PB5D 
	#define GPIO_04		PB2D 
	#define GPIO_17		PC0D
	#define GPIO_21		PC1D
	#define GPIO_22		PC2D
	#define GPIO_18		PB7D
	#define GPIO_23		PD1D
	#define GPIO_24		PD2D
	#define GPIO_25		PD3D
	#define SPI_MOSI	PB4D
	#define SPI_MISO	PB3D
	#define SPI_SCL 	PB5D
	#define SPI_CS0		PD4D
	#define SPI_CS1 	PD5D

//*****************************************************************************
//===========================================================================
//   MACROS: 
//===========================================================================
#define WelcomeString		( "LAPIS ML610Q112 LaPi DEVELOPMENT DEMO\n\r" )
#define WelcomeString_LEN	( sizeof(WelcomeString) - 1 )

// ===== Peripheral setting.=====
#define HSCLK_KHZ	( 8000u )	// 8MHz = 8000kHz (will be multiplied by 1024 to give 8,192,000Hz)
#define FLG_SET		( 0x01u )

// SET DESIRED UART SETTINGS HERE! (Options in UART.h)
#define UART_BAUDRATE		( UART_BR_9600BPS) 	// Data Bits Per Second - Tested at rates from 2400bps to 512000bps!
#define UART_DATA_LENGTH	( UART_LG_8BIT )		// x-Bit Data
#define UART_PARITY_BIT		( UART_PT_NON )		// Parity
#define UART_STOP_BIT		( UART_STP_1BIT )		// x Stop-Bits
#define UART_LOGIC			( UART_NEG_POS )		// Desired Logic
#define UART_DIRECTION		( UART_DIR_LSB )		// LSB or MSB First
//#define _TBC_H_

//*****************************************************************************

//*****************************************************************************
//===========================================================================
//   STRUCTURES:    
//===========================================================================

static const tUartSetParam  _uartSetParam = {		// UART Parameters
	UART_BAUDRATE,								// Members of Structure...
	UART_DATA_LENGTH,							// Members of Structure...
	UART_PARITY_BIT,							// Members of Structure...
	UART_STOP_BIT,								// Members of Structure...
	UART_LOGIC,									// Members of Structure...
	UART_DIRECTION								// Members of Structure...
};

//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   FUNCTION PROTOTYPES: 
//	Establishes the name and return type of a function and may specify the 
// 	types, formal parameter names and number of arguments to the function                                 
//===========================================================================
void main_clrWDT( void );			// no return value and no arguments
void Initialization( void );		// no return value and no arguments
void SetOSC( void );				// no return value and no arguments
void PortA_Low( void );				// no return value and no arguments
void PortB_Low( void );				// no return value and no arguments
void PortC_Low( void );				// no return value and no arguments
void PortD_Low( void );				// no return value and no arguments

//UART and I2C Functions
void _funcUartFin( unsigned int size, unsigned char errStat );
void _funcI2CFin( unsigned int size, unsigned char errStat );
void main_reqNotHalt( void );
void _intUart( void );
void _intI2c( void );
void _intADC( void );
void NOPms( unsigned int ms );


void DeviceSelection(void); // Initializes port D for registering Sensor Control States
void SensorInitialization(void); 
 
void MainOp_Hall_Effect_Sensors_0();
void MainOp_Hall_Effect_Sensors_1();
void MainOp_Ambient_Light_Sensor_5();
void MainOp_Ambient_Light_Sensor_6();
void MainOp_Ambient_Light_Sensor_7();
void MainOp_Ambient_Light_Sensor_8();
void MainOp_Ambient_Light_Sensor_9();
void MainOp_UV_Sensor_10();
void MainOp_KX022();
void MainOp_KMX061();
void MainOp_Temperature_Sensor_20();
void MainOp_Temperature_Sensor_21();
void MainOp_Temperature_Sensor_22();
void MainOp_Temperature_Sensor_23();

void Init_Hall_Effect_Sensors_0();
void Init_Hall_Effect_Sensors_1();
void Init_Ambient_Light_Sensor_5();
void Init_Ambient_Light_Sensor_6();
void Init_Ambient_Light_Sensor_7();
void Init_Ambient_Light_Sensor_8();
void Init_Ambient_Light_Sensor_9();
void Init_UV_Sensor_10();
void Init_KX022();
void Init_KMX061();
void Init_Temperature_Sensor_20();
void Init_Temperature_Sensor_21();
void Init_Temperature_Sensor_22();
void Init_Temperature_Sensor_23();

void testPrint(char * CS);
//*****************************************************************************

//GLOBALS...
//UART and I2C Variables
unsigned char	_flgUartFin;
unsigned char 	_flgI2CFin;
unsigned char	_flgADCFin;
unsigned char	_reqNotHalt;

//Sensor Variables - BH1721 (ALS8)
static unsigned char			ALS8_DevAddress = 0x23;
static unsigned char			ALS8_AutoResolution = 0x10;
static unsigned char			ALS8_PowerOn = 0x01;
static unsigned char			ALS8_SensorReturn[2];

//Sensor Variables
static unsigned char			SAD_KMX61 = 0x0E;
static unsigned char			STBY_REG = 0x29;
static unsigned char			SELF_TEST = 0x60;
static unsigned char			CNTL1 = 0x2A;
static unsigned char			CNTL2 = 0x2B;
static unsigned char			ODCNTL = 0x2C;
static unsigned char			TEMP_EN_CNTL = 0x4C;
static unsigned char			BUF_CTRL1 = 0x78;
static unsigned char			BUF_CTRL2 = 0x79;	

static unsigned char			STBY_REG_DATA = 0x00;
static unsigned char			STBY_REG_OFF_DATA = 0x03;

static unsigned char			SELF_TEST_DATA = 0x00;
static unsigned char			CNTL1_DATA = 0x13;
static unsigned char			CNTL2_DATA = 0x00;
static unsigned char			ODCNTL_DATA = 0x00;
static unsigned char			TEMP_EN_CNTL_DATA = 0x01;
static unsigned char			BUF_CTRL1_DATA = 0x00;//0xA3;
static unsigned char			BUF_CTRL2_DATA = 0x00;//0xC1;

static unsigned char			KMX61_AXL = 0x0A;
static unsigned char			KMX61_AXH = 0x0B;
static unsigned char			KMX61_AYL = 0x0C;
static unsigned char			KMX61_AYH = 0x0D;
static unsigned char			KMX61_AZL = 0x0E;
static unsigned char			KMX61_AZH = 0x0F;
	
static unsigned char			KMX61_MXL = 0x12;
static unsigned char			KMX61_MXH = 0x13;
static unsigned char			KMX61_MYL = 0x14;
static unsigned char			KMX61_MYH = 0x15;
static unsigned char			KMX61_MZL = 0x16;
static unsigned char			KMX61_MZH = 0x17;

static unsigned char			KMX61_TL = 0x10;
static unsigned char			KMX61_TH = 0x11;

//General Variables
static unsigned char			HelloWorld[17] = 	{"UV Sensor Demo"};
//static unsigned char   		UV_DETECTED[16] = {"  UV DETECTED! "};
//static unsigned int			Test = 0;
//static unsigned int			UVReturn = 0;
//static unsigned int			UV_Offset;
//static float					UVIndex;
//static unsigned int			ScaledUVReturn = 0;
//static unsigned char			SensorReturn[50]; 
static unsigned char			PrintContent[50];

unsigned int ret;
unsigned int testI2C;

static unsigned char SensorPlatformSelection;
static unsigned char SensorPlatformSelection_Temp;
static unsigned char SensorIntializationFlag = 1;
static unsigned int SensorOutput;


static int i,j, tmp, tmp1,tempVal;
unsigned char KMX61_VALUE[2]; 
/*############################################################################*/
/*#                                  APIs                                    #*/
/*############################################################################*/
//*****************************************************************************
//===========================================================================
//  	Start of MAIN FUNCTION
//===========================================================================
int main(void) 
{ 
	Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.
	
	#ifdef DebugSensor //Debug Initialization For devices
	Init_Ambient_Light_Sensor_8();
	#endif
	
MainLoop:
	main_clrWDT();
	
	#ifdef DebugSensor	//Debug Main Loop For Devices
	MainOp_Ambient_Light_Sensor_8();
	#endif
	
	#ifndef DebugSensor
	DeviceSelection(); 	// SensorPlatformSelection holds 8-bits of sensor type
	
	if(SensorIntializationFlag == 1){	//Holds the SW Statement for Initializing Sensors
		SensorInitialization();
		SensorIntializationFlag = 0;
	}
	
	switch(SensorPlatformSelection){
		case 0:
			//testPrint(&SensorPlatformSelection);
			MainOp_Hall_Effect_Sensors_0(); // Refer to function description for list of sensors 
			break;
		case 1:
			//testPrint(&SensorPlatformSelection);
			MainOp_Hall_Effect_Sensors_1(); // Refer to function description for list of sensors
			break;
		case 5: 
			//testPrint(&SensorPlatformSelection);
			MainOp_Ambient_Light_Sensor_5(); // Refer to function description for list of sensors
			break;
		case 6:
			//testPrint(&SensorPlatformSelection);
			MainOp_Ambient_Light_Sensor_6(); // Refer to function description for list of sensors 
			break;
		case 7:
			//testPrint(&SensorPlatformSelection);
			MainOp_Ambient_Light_Sensor_7(); // Refer to function description for list of sensors 
			break;
		case 8:
			//testPrint(&SensorPlatformSelection);
			MainOp_Ambient_Light_Sensor_8(); // Refer to function description for list of sensors 
			break;
		case 9:
			//testPrint(&SensorPlatformSelection);
			MainOp_Ambient_Light_Sensor_9(); // Refer to function description for list of sensors 
			break;
		case 10:
			//testPrint(&SensorPlatformSelection);
			MainOp_UV_Sensor_10(); // Refer to function description for list of sensors 
			break;
		case 15:
			//testPrint(&SensorPlatformSelection);
			MainOp_KX022(); // Refer to function description for list of sensors 
			break;
		case 16:
			//testPrint(&SensorPlatformSelection);
			MainOp_KMX061(); // Refer to function description for list of sensors 
			break;
		case 20:
			//testPrint(&SensorPlatformSelection);
			MainOp_Temperature_Sensor_20(); // Refer to function description for list of sensors 
			break;
		case 21:
			//testPrint(&SensorPlatformSelection);
			MainOp_Temperature_Sensor_21(); // Refer to function description for list of sensors
			break;
		case 22:
			//testPrint(&SensorPlatformSelection);
			MainOp_Temperature_Sensor_22(); // Refer to function description for list of sensors 
			break;
		case 23:
			//testPrint(&SensorPlatformSelection);
			MainOp_Temperature_Sensor_23(); // Refer to function description for list of sensors
			break; 
	} 	 
	#endif
	
	HLT = 1;	//Wait time here depends on the WDT timing
	goto MainLoop;
}
//===========================================================================
//  	End of MAIN FUNCTION
//===========================================================================


//===========================================================================
//  	Start of Other Functions...
//===========================================================================
//==========================================================================
//	Initialize Micro to Desired State...
//===========================================================================
static void Initialization(void){

	//Initialize Peripherals	
	//BLKCON2 Control Bits...Manually Set 4/12/2013
	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
	DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
	
	BLKCON4 = 0x00; // 0=> Enables SA-ADC
	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
	BLKCON7 = 0x0F; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF

	// Port Initialize
	PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
	PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
	PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
	PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low
	
	// Set Oscillator Rate
    SetOSC();
	
	// Settings for the ADC input (A0, A1)
	PA0DIR = 1;
	PA1DIR = 1;		//GPIO Input
	SACH0 = 1;		//This enables the ADC Channel 0 from A0 Pin
	SACH1 = 1;		//This enables the ADC Channel 1 from A1 Pin
	SALP = 0;		//Single Read or Continuous Read... Single = 0, Consecutive = 1
	
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
	// INTERRUPT SETUP...
	irq_di();	// Disable Interrupts
	irq_init();	// Initialize Interrupts (All Off and NO Requests)

	// INTERRUPT ENABLE REGISTERS...
	IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
	// INTERRUPT REQUEST REGISTERS...
	IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;

	E2H = 0;	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
				
	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
	EUA0 = 1; 	// EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
	
	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
	EI2CM = 1;
	QI2CM = 0;
	
	//Enable ADC Interrupts Handler
	(void)irq_setHdr( (unsigned char)IRQ_NO_SADINT, _intADC );
	ESAD = 1;
	QSAD = 0;
	
	/*
	//Set up xHz TBC Interrupt (Options: 128Hz, 32Hz, 16Hz, 2Hz)
	//(void)irq_setHdr( (unsigned char)IRQ_NO_T2HINT, TBC_ISR );  //Clear interrupt request flag
	
	// TBC...Set Ratio: : 1:1 => 1_1
	(void)tb_setHtbdiv( (unsigned char)TB_HTD_1_1 ); //Set the ratio of dividing frequency of the time base counter
		E2H = 0;	  // Enable x Hz TBC Interrupt (1=ENABLED)
		Q2H = 0;	  // Request flag for the time base counter x Hz interrupt	
	*/
	
	irq_ei(); // Enable Interrupts
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII

	// WDT... This will be the triggering condition to return from halt mode
	// We will need to calibrate based on the timing of our loop
	// 0x00 = 125ms
	// 0x01 = 500ms
	// 0x02 = 2sec
	// 0x03 = 8sec
	// 0x04 = 23.4ms
	// 0x05 = 31.25ms
	// 0x06	= 62.5ms
	WDTMOD = 0x01; 	
	main_clrWDT(); 	// Clear WDT
	
	//I2C Initialization...
	//P20C0 = 1;	/* CMOS output */
	//P20C1 = 1;	
	//P20D = 1;		/* write protect enable */
	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
	
	//UART Initialization...
	(void)uart_init( (unsigned char)UART_CS_HSCLK,		/* Generator       */
			     (unsigned short)HSCLK_KHZ,				/* HSCLK frequency */
			     &_uartSetParam );						/* Param... 	 */
	uart_PortSet();
	
	//Write "Program Start" UART Control
	
}//End Initialization
//===========================================================================


/*******************************************************************************
	Routine Name:	DeviceSelection
	Form:			void DeviceSelection( void )
	Parameters:		void
	Return value:	void
	Initialization: SensorPlatformSelection is zeroized.
	Description:	Configures the Port D0..D5 to input and stores their respective
					bits [0..5] to the global char SensorPlatformSelection.
******************************************************************************/
void DeviceSelection(void)
{  
	SensorPlatformSelection_Temp = 0x00; 
	
	SensorPlatformSelection_Temp |= PD0D;
	SensorPlatformSelection_Temp |= PD1D<<1;
	SensorPlatformSelection_Temp |= PD2D<<2;
	SensorPlatformSelection_Temp |= PD3D<<3;
	SensorPlatformSelection_Temp |= PD4D<<4; 
	SensorPlatformSelection_Temp |= PD5D<<5; 
	
	if(SensorPlatformSelection_Temp != SensorPlatformSelection){
		SensorIntializationFlag = 1;
		SensorPlatformSelection = SensorPlatformSelection_Temp;
	}
}

/*******************************************************************************
	Routine Name:	SensorInitialization
	Form:			void SensorInitialization( void )
	Parameters:		void
	Return value:	void
	Description:	Holds the SW Statement for Initializing the Sensors
******************************************************************************/
void SensorInitialization(void)
{  
	switch(SensorPlatformSelection){
		case 0:
			Init_Hall_Effect_Sensors_0(); // Refer to function description for list of sensors 
			break;
		case 1:
			Init_Hall_Effect_Sensors_1(); // Refer to function description for list of sensors
			break;
		case 5: 
			Init_Ambient_Light_Sensor_5(); // Refer to function description for list of sensors
			break;
		case 6:
			Init_Ambient_Light_Sensor_6(); // Refer to function description for list of sensors 
			break;
		case 7:
			Init_Ambient_Light_Sensor_7(); // Refer to function description for list of sensors 
			break;
		case 8:
			Init_Ambient_Light_Sensor_8(); // Refer to function description for list of sensors 
			break;
		case 9:
			Init_Ambient_Light_Sensor_9(); // Refer to function description for list of sensors 
			break;
		case 10:
			Init_UV_Sensor_10(); // Refer to function description for list of sensors 
			break;
		case 15:
			Init_KX022(); // Refer to function description for list of sensors 
			break;
		case 16:
			Init_KMX061(); // Refer to function description for list of sensors 
			break;
		case 20:
			Init_Temperature_Sensor_20(); // Refer to function description for list of sensors 
			break;
		case 21:
			Init_Temperature_Sensor_21(); // Refer to function description for list of sensors
			break;
		case 22:
			Init_Temperature_Sensor_22(); // Refer to function description for list of sensors 
			break;
		case 23:
			Init_Temperature_Sensor_23(); // Refer to function description for list of sensors
			break; 
	} 	 
}

void testPrint(char * CS)
{
		int c = sprintf(PrintContent, "Selected %d\r", *CS);  
		
		_flgUartFin = 0; 
		uart_stop();
		uart_startSend(PrintContent, c, _funcUartFin);  
		while(_flgUartFin != 1){
			main_clrWDT();
		}  
}

/*******************************************************************************
	Routine Name:	MainOp_Hall_Effect_Sensors_0
	Form:			void MainOp_Hall_Effect_Sensors_0( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Hall-Effect Sensors	
						BU52001GUL
						BU52002GUL
						BU52003GUL
						BU52011HFV
						BU52021HFV
						BU52012HFV
						BU52040HFV
						BU52025G (SSOP5)
						BU52015GUL
						BU52053NVX
						BU52056NVX
						BU52061NVX
						BU52012NVX
						BU52054GWZ
						BU52055GWZ
******************************************************************************/
void MainOp_Hall_Effect_Sensors_0(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
						BU52013HFV
	Routine Name:	MainOp_Hall_Effect_Sensors_1
	Form:			void MainOp_Hall_Effect_Sensors_1( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Hall-Effect Sensors			
						BU52004GUL
						BU52014HFV
******************************************************************************/
void MainOp_Hall_Effect_Sensors_1(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_Ambient_Light_Sensor_5
	Form:			void MainOp_Ambient_Light_Sensor_5( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor
						BH1600FVC
						BH1603FVC
						BH1620FVC
						BH1621FVC
						BH1680FVC

******************************************************************************/
void MainOp_Ambient_Light_Sensor_5(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}
/*******************************************************************************
	Routine Name:	MainOp_Ambient_Light_Sensor_6
	Form:			void MainOp_Ambient_Light_Sensor_6( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor	
						BH1710FVC
						BH1715FVC
						BH1750FVI (WSOF6I)
						BH1751FVI (WSOF6I)
******************************************************************************/
void MainOp_Ambient_Light_Sensor_6(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_Ambient_Light_Sensor_7
	Form:			void MainOp_Ambient_Light_Sensor_7( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor		
						BH1730FVC	
******************************************************************************/
void MainOp_Ambient_Light_Sensor_7(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_Ambient_Light_Sensor_8
	Form:			void MainOp_Ambient_Light_Sensor_8( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor
						BH1721FVC
******************************************************************************/
void MainOp_Ambient_Light_Sensor_8(){
/*
static unsigned char			ALS8_DevAddress = 0x23;
static unsigned char			ALS8_AutoResolution = 0x10;
static unsigned char			ALS8_PowerOn = 0x01;
*/
int c;
unsigned int Return;
	
	//----- ALS Get ALS Data Mode I2C Command ----- 
	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();				 													//Make sure I2C is not currently running
	I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
	i2c_startReceive(ALS8_DevAddress, &ALS8_SensorReturn, 0, &ALS8_SensorReturn, 2, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
		main_clrWDT();
	}
	
	// Format ALS Data
	Return = (ALS8_SensorReturn[0]<<8) + ALS8_SensorReturn[1];
	
	// Print ALS Data
	c = sprintf(PrintContent, "ALSRaw = %u \r", Return);  
	_flgUartFin = 0; 
	uart_stop();
	uart_startSend(PrintContent, c, _funcUartFin);  
	while(_flgUartFin != 1){
		main_clrWDT();
	}
}

/*******************************************************************************
	Routine Name:	MainOp_Ambient_Light_Sensor_9
	Form:			void MainOp_Ambient_Light_Sensor_9( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor	
						BH1780GLI
******************************************************************************/
void MainOp_Ambient_Light_Sensor_9(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_UV_Sensor_10
	Form:			void MainOp_UV_Sensor_10( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): UV-Sensor
						ML8511
******************************************************************************/
void MainOp_UV_Sensor_10(){
//Get UV Sensor Data Reading - GET Data from ADC0
	_flgADCFin = 0;
	SARUN = 1;					//Start Obtaining ADC Info
	while(_flgADCFin == 0)		//Wait for ADC to finish running
	{
		main_clrWDT();
	}		
	UVReturn = (SADR0L>>6)+(SADR0H<<2);		//Format RAW UV Sensor Output
	UVIndex = UVReturn*(0.04029)-12.49;
	if(UVIndex >= 10){
		UVIndex = 10;
	}
}

/*******************************************************************************
	Routine Name:	MainOp_KX022
	Form:			void MainOp_KX022( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): 3-axis accelerometer	
						KX022
******************************************************************************/
void MainOp_KX022(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_KMX061
	Form:			void MainOp_KMX061( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): 6-Axis Accelerometer/Magnetometer
						KMX061
******************************************************************************/
void MainOp_KMX061(){ 
	char Flag = 0xff;
	int c;
	//Conn: Vio->3.3, int->p7, scl->p9, sda->10
	        while(PC7D)
			{
				main_clrWDT(); 
				
				//EPB3 = 0;		//Turn off Accel/Gyro Interrupt.  This can probably be removed...
				//----- Accel/Gryo Start I2C Command ----- 
				_flgI2CFin = 0;																	//reset I2C completed Flag
				i2c_stop();																		//Make sure I2C is not currently running
				I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
				i2c_startReceive(SAD_KMX61, &KMX61_AXL, 1, &KMX61_VALUE, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
					main_clrWDT();
				}  
				tmp = (KMX61_VALUE[0]);
				_flgI2CFin = 0;																	//reset I2C completed Flag
				i2c_stop();				 													//Make sure I2C is not currently running
				I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
				i2c_startReceive(SAD_KMX61, &KMX61_AXH, 1, &KMX61_VALUE, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
					main_clrWDT();
				} 
				tmp1 = (KMX61_VALUE[0])<<8; 
				tempVal = (tmp|tmp1)>>2;
				//Better UART Send w/ String Formatting
				c = sprintf(PrintContent, "ax( %d )\r", tempVal);  
				
				_flgUartFin = 0; 
				uart_stop();
				uart_startSend(PrintContent, c, _funcUartFin);  
				while(_flgUartFin != 1){
					main_clrWDT();
				}  
				//EPB3 = 1;		//Turns Accel/Gyro Interrupt back on... again, this may not be necessary 
			} 
}

/*******************************************************************************
	Routine Name:	MainOp_Temperature_Sensor_20
	Form:			void MainOp_Temperature_Sensor_20( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Temperature Sensors	
						BD1020HFV
******************************************************************************/
void MainOp_Temperature_Sensor_20(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_Temperature_Sensor_21
	Form:			void MainOp_Temperature_Sensor_21( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Temperature Sensors
						BDJ0601HFV
						BDJ0701HFV
						BDJ0751HFV
						BDJ0801HFV
						BDJ0851HFV
						BDJ0901HFV						
******************************************************************************/
void MainOp_Temperature_Sensor_21(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_Temperature_Sensor_22
	Form:			void MainOp_Temperature_Sensor_22( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Temperature Sensors
						BDE0600G
						BDE0700G
						BDE0800G
						BDE0900G
						BDE1000G
						BDE1100G	
******************************************************************************/
void MainOp_Temperature_Sensor_22(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_Temperature_Sensor_23
	Form:			void MainOp_Temperature_Sensor_23( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Temperature Sensors
						BDJ0550HFV
						BDJ0600HFV
						BDJ0650HFV
						BDJ0700HFV
						BDJ0800HFV
******************************************************************************/
void MainOp_Temperature_Sensor_23(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	MainOp_Init_Hall_Effect_Sensors_0
	Form:			void MainOp_Init_Hall_Effect_Sensors_0( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Initialize Hall Effect Sensor 0
	Sensor Platform(s): Hall-Effect Sensors	
						BU52001GUL
						BU52002GUL
						BU52003GUL
						BU52011HFV
						BU52021HFV
						BU52012HFV
						BU52040HFV
						BU52025G (SSOP5)
						BU52015GUL
						BU52053NVX
						BU52056NVX
						BU52061NVX
						BU52012NVX
						BU52054GWZ
						BU52055GWZ
******************************************************************************/
void Init_Hall_Effect_Sensors_0(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
						BU52013HFV
	Routine Name:	Init_Hall_Effect_Sensors_1
	Form:			void Init_Hall_Effect_Sensors_1( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Hall-Effect Sensors			
						BU52004GUL
						BU52014HFV
******************************************************************************/
void Init_Hall_Effect_Sensors_1(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	Init_Ambient_Light_Sensor_5
	Form:			void Init_Ambient_Light_Sensor_5( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor
						BH1600FVC
						BH1603FVC
						BH1620FVC
						BH1621FVC
						BH1680FVC

******************************************************************************/
void Init_Ambient_Light_Sensor_5(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}
/*******************************************************************************
	Routine Name:	Init_Ambient_Light_Sensor_6
	Form:			void Init_Ambient_Light_Sensor_6( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor	
						BH1710FVC
						BH1715FVC
						BH1750FVI (WSOF6I)
						BH1751FVI (WSOF6I)
******************************************************************************/
void Init_Ambient_Light_Sensor_6(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	Init_Ambient_Light_Sensor_7
	Form:			void Init_Ambient_Light_Sensor_7( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor		
						BH1730FVC	
******************************************************************************/
void Init_Ambient_Light_Sensor_7(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	Init_Ambient_Light_Sensor_8
	Form:			void Init_Ambient_Light_Sensor_8( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor
						BH1721FVC
******************************************************************************/
void Init_Ambient_Light_Sensor_8(){
//----- ALS Start I2C Command ----- 
	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();																		//Make sure I2C is not currently running
	I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
	i2c_startSend(ALS8_DevAddress, &ALS8_PowerOn, 0, &ALS8_PowerOn, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
		main_clrWDT();
	}  
	
	//----- ALS Auto-Resolution Mode I2C Command ----- 
	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();				 													//Make sure I2C is not currently running
	I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
	i2c_startSend(ALS8_DevAddress, &ALS8_AutoResolution, 0, &ALS8_AutoResolution, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
		main_clrWDT();
	} 
	
}

/*******************************************************************************
	Routine Name:	Init_Ambient_Light_Sensor_9
	Form:			void Init_Ambient_Light_Sensor_9( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Ambient Light Sensor	
						BH1780GLI
******************************************************************************/
void Init_Ambient_Light_Sensor_9(){


}

/*******************************************************************************
	Routine Name:	Init_UV_Sensor_10
	Form:			void Init_UV_Sensor_10( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): UV-Sensor
						ML8511
******************************************************************************/
void Init_UV_Sensor_10(){

	// Settings for the Enable pin for the UV Sensor
	PA2DIR = 0;		
	PA2C0 = 1;		
	PA2C1 = 1;		
	PA2MD0 = 0;
	PA2MD1 = 0;
	PA2D = 1;
	
	// Settings for the ADC input for the output of the UV sensor
	PA1DIR = 1;		//GPIO Input
	SACH1 = 1;		//This enables the ADC Channel 1 from the corrected pin
	SALP = 0;		//Single Read or Continuous Read... Single = 0, Consecutive = 1
}

/*******************************************************************************
	Routine Name:	Init_KX022
	Form:			void Init_KX022( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): 3-axis accelerometer	
						KX022
******************************************************************************/
void Init_KX022(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	Init_KMX061
	Form:			void Init_KMX061( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): 6-Axis Accelerometer/Magnetometer
						KMX061
******************************************************************************/
void Init_KMX061(){ 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &STBY_REG , 1,&STBY_REG_OFF_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	} 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &SELF_TEST , 1,&SELF_TEST_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	} 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &CNTL1 , 1,&CNTL1_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	} 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &CNTL2 , 1,&CNTL2_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	} 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &ODCNTL , 1,&ODCNTL_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}  
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &TEMP_EN_CNTL , 1,&TEMP_EN_CNTL_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &BUF_CTRL1 , 1,&BUF_CTRL1_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	} 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &BUF_CTRL2 , 1,&BUF_CTRL2_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	} 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend(SAD_KMX61, &STBY_REG , 1,&STBY_REG_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	} 
}

/*******************************************************************************
	Routine Name:	Temperature_Sensor_20
	Form:			void Temperature_Sensor_20( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Temperature Sensors	
						BD1020HFV
******************************************************************************/
void Init_Temperature_Sensor_20(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	Temperature_Sensor_21
	Form:			void Temperature_Sensor_21( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Temperature Sensors
						BDJ0601HFV
						BDJ0701HFV
						BDJ0751HFV
						BDJ0801HFV
						BDJ0851HFV
						BDJ0901HFV						
******************************************************************************/
void Init_Temperature_Sensor_21(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	Temperature_Sensor_22
	Form:			void Temperature_Sensor_22( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Temperature Sensors
						BDE0600G
						BDE0700G
						BDE0800G
						BDE0900G
						BDE1000G
						BDE1100G	
******************************************************************************/
void Init_Temperature_Sensor_22(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	Temperature_Sensor_23
	Form:			void Temperature_Sensor_23( void )
	Parameters:		void
	Return value:	void
	Initialization: None.
	Description:	Gets the output of Sensor of Sensor Control 0 and stores the
					output to a var SensorOutput.
	Sensor Platform(s): Temperature Sensors
						BDJ0550HFV
						BDJ0600HFV
						BDJ0650HFV
						BDJ0700HFV
						BDJ0800HFV
******************************************************************************/
void Init_Temperature_Sensor_23(){
/*
	char Flag = 0xff;
	while(Flag)
	{	
		// Update SensorOutput
		// SensorOutput = ;
	}
*/
}

/*******************************************************************************
	Routine Name:	main_clrWDT
	Form:			void main_clrWDT( void )
	Parameters:		void
	Return value:	void
	Description:	clear WDT.
******************************************************************************/

void main_clrWDT( void )
{
	//How to clear the Watch Dog Timer:
	// => Write alternately 0x5A and 0xA5 into WDTCON register
	do {
		WDTCON = 0x5Au;
	} while (WDP != 1);
	WDTCON = 0xA5u;
}

/*******************************************************************************
	Routine Name:	_funcUartFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
				unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcUartFin( unsigned int size, unsigned char errStat )
{
	uart_continue();					// Function in UART.c: process to continue send and receive...
	_flgUartFin = (unsigned char)FLG_SET;
	main_reqNotHalt();				// uncommented 5/2/2013
}

/*******************************************************************************
	Routine Name:	_funcI2CFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
				unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcI2CFin( unsigned int size, unsigned char errStat )
{
	i2c_continue();					// Function in UART.c: process to continue send and receive...
	_flgI2CFin = (unsigned char)FLG_SET;
	main_reqNotHalt();				// uncommented 5/2/2013
}

/*******************************************************************************
	Routine Name:	_intI2c
	Form:			static void _intI2c( void )
	Parameters:		void
	Return value:	void
	Description:	I2C handler.
******************************************************************************/
static void _intI2c( void )
{
	(void)i2c_continue();
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	_intADC
	Form:			static void _intADC( void )
	Parameters:		void
	Return value:	void
	Description:	I2C handler.
******************************************************************************/
static void _intADC( void )
{
	_flgADCFin = 1;
}

/*******************************************************************************
	Routine Name:	main_reqNotHalt
	Form:			void reqNotHalt( void )
	Parameters:		void
	Return value:	void
	Description:	request not halt.
******************************************************************************/
void main_reqNotHalt( void )
{
	_reqNotHalt = (unsigned char)FLG_SET;
}

/*******************************************************************************
	Routine Name:	_intUart
	Form:			static void _intUart( void )
	Parameters:		void
	Return value:	void
	Description:	UART handler.
******************************************************************************/
static void _intUart( void )
{
	uart_continue(); 	//in UART.c: process to continue send and receive...
}

//===========================================================================
//	OSC set
//===========================================================================
static void SetOSC(void){

	//FCON0: 			// xMHz PLL (3=1MHz; 2=2MHz; 1=4MHz; 0=8MHz)...
	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
	SYSC1 = 0;

	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
	OSCM0 = 0;
   	
	ENOSC = 1;			//1=Enable High Speed Oscillator...
	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 

	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013

	__EI();			//INT enable
}
//===========================================================================

//===========================================================================
//	Clear All 3 Bits of Port A
//===========================================================================
void PortA_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
	PA2DIR = 0;		// PortA Bit2 set to Output Mode...

	//I/O Type...
	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
	PA0C0  = 1;		
	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
	PA1C0  = 1;	
	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
	PA2C0  = 1;	

	//Purpose...
	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
	PA0MD0  = 0;	
	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
	PA1MD0  = 0;	
	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
	PA2MD0  = 0;	

	//Data...
	PA0D = 0;		// A.0 Output OFF....
	PA1D = 0;		// A.1 Output OFF....
	PA2D = 0;		// A.2 Output OFF....

	main_clrWDT(); 	// Clear WDT
}
//===========================================================================

//===========================================================================
//	Clear All 8 Bits of Port B
//===========================================================================
void PortB_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
	PB7DIR = 0;		// PortB Bit7 set to Output Mode...

	//I/O Type...
	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
	PB0C0  = 1;		
	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
	PB1C0  = 1;	
	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
	PB2C0  = 1;	
	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
	PB3C0  = 1;		
	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
	PB4C0  = 1;	
	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
	PB5C0  = 1;	
	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
	PB6C0  = 1;	
	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
	PB7C0  = 1;	

	//Purpose...
	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
	PB0MD0  = 0;	
	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
	PB1MD0  = 0;	
	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
	PB2MD0  = 0;	
	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
	PB3MD0  = 0;	
	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
	PB4MD0  = 0;	
	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
	PB5MD0  = 0;
	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
	PB6MD0  = 0;	
	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
	PB7MD0  = 0;

	//Data...
	PB0D = 0;		// B.0 Output OFF....
	PB1D = 0;		// B.1 Output OFF....
	PB2D = 0;		// B.2 Output OFF....
	PB3D = 0;		// B.3 Output OFF....
	PB4D = 0;		// B.4 Output OFF....
	PB5D = 0;		// B.5 Output OFF....
	PB6D = 0;		// B.6 Output OFF....
	PB7D = 0;		// B.7 Output OFF....

	main_clrWDT(); 	// Clear WDT
}
//===========================================================================

//===========================================================================
//	Clear All 8 Bits of Port C
//===========================================================================
void PortC_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
	PC7DIR = 0;		// PortC Bit7 set to Output Mode...

	//I/O Type...
	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
	PC0C0  = 1;		
	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
	PC1C0  = 1;	
	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
	PC2C0  = 1;	
	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
	PC3C0  = 1;		
	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
	PC4C0  = 1;	
	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
	PC5C0  = 1;	
	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
	PC6C0  = 1;	
	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
	PC7C0  = 1;	

	//Purpose...
	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
	PC0MD0  = 0;	
	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
	PC1MD0  = 0;	
	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
	PC2MD0  = 0;	
	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
	PC3MD0  = 0;	
	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
	PC4MD0  = 0;	
	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
	PC5MD0  = 0;
	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
	PC6MD0  = 0;	
	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
	PC7MD0  = 0;

	//Data...
	PC0D = 0;		// C.0 Output OFF....
	PC1D = 0;		// C.1 Output OFF....
	PC2D = 0;		// C.2 Output OFF....
	PC3D = 0;		// C.3 Output OFF....
	PC4D = 0;		// C.4 Output OFF....
	PC5D = 0;		// C.5 Output OFF....
	PC6D = 0;		// C.6 Output OFF....
	PC7D = 0;		// C.7 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 6 Bits of Port D
//===========================================================================
void PortD_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Data...

	//Direction...	
	PD0DIR = 1;		// PortD Bit0 set to Output Mode...
	PD1DIR = 1;		// PortD Bit1 set to Output Mode...
	PD2DIR = 1;		// PortD Bit2 set to Output Mode...
	PD3DIR = 1;		// PortD Bit3 set to Output Mode...
	PD4DIR = 1;		// PortD Bit4 set to Output Mode...
	PD5DIR = 1;		// PortD Bit5 set to Output Mode...

	//I/O Type...
	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
	PD0C0= 1;		
	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
	PD1C0= 1;	
	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
	PD2C0= 1;	
	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
	PD3C0= 1;		
	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
	PD4C0= 1;	
	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
	PD5C0= 1;	

	//Data...
	PD0D = 0;		// D.0 Output OFF....
	PD1D = 0;		// D.1 Output OFF....
	PD2D = 0;		// D.2 Output OFF....
	PD3D = 0;		// D.3 Output OFF....
	PD4D = 0;		// D.4 Output OFF....
	PD5D = 0;		// D.5 Output OFF....

	main_clrWDT(); 	// Clear WDT
}
//===========================================================================


/*******************************************************************************
	Routine Name:	NOPms
	Form:			void NOP1000( unsigned int ms )
	Parameters:		unsigned int sec = "Number of seconds where the device is not doing anything"
	Return value:	void
	Description:	NOP for x seconds. Uses HTB* clock (512kHz) and timer 8+9 (max 0xFFFF)
					*(HTBCLK = 1/16 * HSCLK = (1/16)*8192kHz = 512kHz, see HTBDR to change if we need an even smaller increment timer...)
					1/(512kHz) * 0xFFFF = 127ms
					
******************************************************************************/
void NOPms( unsigned int ms )
{
unsigned int timerThres;
unsigned char TimeFlag;
unsigned int TempSec;
unsigned int timer;
unsigned int timertest;

	TempSec = ms;
	TimeFlag = 0;

	tm_init(TM_CH_NO_AB);
	tm_setABSource(TM_CS_HTBCLK);
	tm_setABData(0xffff);

	if(ms < 128){
		timerThres = 0x1FF * ms;
		TimeFlag = 0;
	}
	if(ms == 128){
		timerThres = 0xFFFF;
		TimeFlag = 0;
	}
	if(ms > 128){
		while(TempSec > 128){
			TempSec -= 128;
			TimeFlag++;
		}
		if(TempSec != 0){
			timerThres = 0x1FF * TempSec;
		}
		else{
			timerThres = 0xFFFF;
			TimeFlag--;
		}
	}

TimerRestart:
	main_clrWDT();	
	//tm_restart89();	//using LSCLK, the maximum delay time we have is ~2 secs
	tm_startAB();
	timer = tm_getABCounter();
	while(timer < timerThres){
		timer = tm_getABCounter();
		timertest = timer;
	}
	if(TimeFlag !=0){
		tm_stopAB();
		TimeFlag--;
		timerThres = 0xFFFF;
		goto TimerRestart;
	}
}