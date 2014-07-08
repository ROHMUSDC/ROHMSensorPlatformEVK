//*****************************************************************************
// Program:	 IOT UV Sensor Board Firmware for Q112 LApis Microcontroller
// Author:	 K. Bahar, C. Schell, F. Lee
//		 ROHM Semiconductor USA, LLC
//		 US Design Center
// Started:  June 14th, 2014
// Purpose:	 Firmware for Q112 for IOT Sensor Board 
// Updated:	 June 14th, 2014
//*****************************************************************************

// ============================= IOT Board Specs ============================== 
//	Needed Section:
//	Pin A0 = UV Enable Signal	= Need to be analog output
//	Pin A1 = UV Raw Output		= Need to be an ADC input
//	Pin B0 = Phone to MCU Comm  = Manchester Encoded Input
//	Pin B1 = MCU to Phone Comm	= Manchester Encoded Output
//	Pin D0 = LDO_EN				= Needs to be analog output
//
//	Optional Sections:
//	Sensor Header:
//		Pin B5 = I2C SCL
//		Pin B6 = I2C SDA
//		Pin B2 = Int Pin for Sensor Header
//		Pin B3 = Aux Pin for Sensor Header
//	LED Block:
//		Pin D1 = LED1			= Need to be analog Output
//		Pin D2 = LED2			= Need to be analog Output
//		Pin D3 = LED3			= Need to be analog Output
//		Pin D4 = LED4			= Need to be analog Output
//		Pin D5 = LED5			= Need to be analog Output
//	Unused Block:
//		Pins C0 to C7
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
//*****************************************************************************

//GLOBALS...
//UART and I2C Variables
unsigned char	_flgUartFin;
unsigned char 	_flgI2CFin;
unsigned char	_flgADCFin;
unsigned char	_reqNotHalt;

//General Variables
static unsigned char	HelloWorld[17] = 	{"UV Sensor Demo"};
static unsigned char    UV_DETECTED[16] = {"  UV DETECTED! "};
static unsigned int		Test = 0;
static unsigned int		UVReturn = 0;
static unsigned int		UV_Offset;
static float			UVIndex;
static unsigned int		ScaledUVReturn = 0;
static unsigned char	SensorReturn[50]; 

unsigned int ret;
unsigned int testI2C;

/*############################################################################*/
/*#                                  APIs                                    #*/
/*############################################################################*/
//*****************************************************************************
//===========================================================================
//  	Start of MAIN FUNCTION
//===========================================================================
int main(void) 
{
int i,c,d;

Init:
	Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.
 
		for(i=0;i<49;i++)
		{
			main_clrWDT(); 
			SensorReturn[i] = 0x20;
		}
		
		SensorReturn[0] = 12;   
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 1, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
		 
		
		for ( c = 1 ; c <= 1000 ; c++ )
		{
			for ( c = 1 ; c <= 1000 ; c++ )
			{}
		} 
			 
		SensorReturn[0] = 128; 
		SensorReturn[1] = 13;  
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 2, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
	 
		
		 
		SensorReturn[0] = 0x20; 
		SensorReturn[1] = 214; 
		SensorReturn[2] = 215; 
		SensorReturn[3] = 220;  
		SensorReturn[4] = 22;  
		SensorReturn[5] = 0x20; 
		SensorReturn[6] = 128; 
		//SensorReturn[6] = 13;
	 
	 
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 7, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
     
		 
	    sprintf(SensorReturn, "UV SENSOR DEMO", 0); 
		
		SensorReturn[14] = 13; 
		
		//Send Returned Sensor Output to PC!
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 15, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
			    
		SARUN = 1;					//Start Obtaining ADC Info
		while(_flgADCFin == 0)		//Wait for ADC to finish running
		{
			main_clrWDT();
		}		
		UV_Offset = (SADR1L>>6)+(SADR1H<<2);	 
		UV_Offset += 5; 
Loop:	

		main_clrWDT();
 			
		_flgADCFin = 0;
	//Get UV Sensor Data Reading
		SARUN = 1;					//Start Obtaining ADC Info
		while(_flgADCFin == 0)		//Wait for ADC to finish running
		{
			main_clrWDT();
		}		
		UVReturn = (SADR1L>>6)+(SADR1H<<2);		//Format RAW UV Sensor Output
		UVIndex = UVReturn*(0.04029)-12.49;
		if(UVIndex >= 10){
			UVIndex = 10;
		}
		
	    //sprintf(SensorReturn,"UVI= %2.2f        ",UVIndex); 
		sprintf(SensorReturn,"UVI= %2.2u        ",UVIndex); 
     
		//Send Returned Sensor Output to PC!
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 19, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
		
	    SensorReturn[0] = 159; 
     
		//Send Returned Sensor Output to PC!
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 1, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
		
	    sprintf(SensorReturn,"[%d]",UVReturn); 
     
		//Send Returned Sensor Output to PC!
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 19, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
		
		
		SensorReturn[0] = 128;    
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 1, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
		
		if(UV_Offset < UVReturn)
		{
		    
			sprintf(SensorReturn," UV DETECTED     ",UVIndex); 
		
			//Send Returned Sensor Output to PC!
			_flgUartFin = 0;
			uart_stop();
			uart_startSend(SensorReturn, 15, _funcUartFin);
			while(_flgUartFin != 1){
				main_clrWDT();
			} 
		}
		else
		{ 
			sprintf(SensorReturn," UV SENSOR DEMO ",UVIndex); 
			//Send Returned Sensor Output to PC!
			_flgUartFin = 0;
			uart_stop();
			uart_startSend(SensorReturn, 15, _funcUartFin);
			while(_flgUartFin != 1){
				main_clrWDT();
			}
		}
		
		SensorReturn[0]=148;
		SensorReturn[1]= 0;
		
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 1, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		} 
		   
		HLT = 1;	//Confirmed that this works... tested using WDT = 8sec and it does take that much time to get back into the loop.
					//For now, lets comment this out so we know operation works correctly
				 
		goto Loop;
		 
} 
 


/* 	// Originally intended to use this for Low Power operation, but now will use the WDT to trigger it.
	// IRQ and function definition needs to be initialized to use this function.
static void TBC_ISR( void ) 
{
	//HLT = 0;
	
}
*/

//===========================================================================
//  	End of MAIN FUNCTION
//===========================================================================
//*****************************************************************************




//*****************************************************************************
//===========================================================================
//  	Start of Other Functions...
//===========================================================================
//*****************************************************************************


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
	
	//----- Applicable Port Settings -----
	
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
	
	// Set Oscillator Rate
    SetOSC();
	
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
	
	//Add EOL characters to strings
	HelloWorld[12] 	= 0x0D;
	HelloWorld[13] 	= 0x0A;
	HelloWorld[10] = 17;
	
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
	
	HelloWorld[15] = 13;
	_flgUartFin = 0;
	uart_stop();	
	uart_startSend(HelloWorld, 16, _funcUartFin); // Send, "Hello World!"
	while(_flgUartFin != 1){
		main_clrWDT();
	}		
	
}//End Initialization
//===========================================================================

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
	PD0DIR = 0;		// PortD Bit0 set to Output Mode...
	PD1DIR = 0;		// PortD Bit1 set to Output Mode...
	PD2DIR = 0;		// PortD Bit2 set to Output Mode...
	PD3DIR = 0;		// PortD Bit3 set to Output Mode...
	PD4DIR = 0;		// PortD Bit4 set to Output Mode...
	PD5DIR = 0;		// PortD Bit5 set to Output Mode...

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