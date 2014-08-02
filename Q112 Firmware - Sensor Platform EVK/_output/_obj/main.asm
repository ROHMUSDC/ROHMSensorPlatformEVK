;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610112) 
	model small, near
	$$NVARmain segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$NTABmain segment table 2h #0h
	$$DeviceSelection$main segment code 2h #0h
	$$Init_Ambient_Light_Sensor_5$main segment code 2h #0h
	$$Init_Ambient_Light_Sensor_6$main segment code 2h #0h
	$$Init_Ambient_Light_Sensor_7$main segment code 2h #0h
	$$Init_Ambient_Light_Sensor_8$main segment code 2h #0h
	$$Init_Ambient_Light_Sensor_9$main segment code 2h #0h
	$$Init_Hall_Effect_Sensors_0$main segment code 2h #0h
	$$Init_Hall_Effect_Sensors_1$main segment code 2h #0h
	$$Init_KMX061$main segment code 2h #0h
	$$Init_KX022$main segment code 2h #0h
	$$Init_Temperature_Sensor_20$main segment code 2h #0h
	$$Init_Temperature_Sensor_21$main segment code 2h #0h
	$$Init_Temperature_Sensor_22$main segment code 2h #0h
	$$Init_Temperature_Sensor_23$main segment code 2h #0h
	$$Init_UV_Sensor_10$main segment code 2h #0h
	$$Initialization$main segment code 2h #0h
	$$MainOp_Ambient_Light_Sensor_5$main segment code 2h #0h
	$$MainOp_Ambient_Light_Sensor_6$main segment code 2h #0h
	$$MainOp_Ambient_Light_Sensor_7$main segment code 2h #0h
	$$MainOp_Ambient_Light_Sensor_8$main segment code 2h #0h
	$$MainOp_Ambient_Light_Sensor_9$main segment code 2h #0h
	$$MainOp_Hall_Effect_Sensors_0$main segment code 2h #0h
	$$MainOp_Hall_Effect_Sensors_1$main segment code 2h #0h
	$$MainOp_KMX061$main segment code 2h #0h
	$$MainOp_KX022$main segment code 2h #0h
	$$MainOp_Temperature_Sensor_20$main segment code 2h #0h
	$$MainOp_Temperature_Sensor_21$main segment code 2h #0h
	$$MainOp_Temperature_Sensor_22$main segment code 2h #0h
	$$MainOp_Temperature_Sensor_23$main segment code 2h #0h
	$$MainOp_UV_Sensor_10$main segment code 2h #0h
	$$NOPms$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$PortD_Low$main segment code 2h #0h
	$$SensorInitialization$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$TAB$$S57$main segment table 2h #0h
	$$TAB$$S73$main segment table 2h #0h
	$$TAB$$S96$main segment table 2h #0h
	$$TAB_uartSetParam$main segment table 2h #0h
	$$_funcI2CFin$main segment code 2h #0h
	$$_funcUartFin$main segment code 2h #0h
	$$_intADC$main segment code 2h #0h
	$$_intI2c$main segment code 2h #0h
	$$_intUart$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	$$main_reqNotHalt$main segment code 2h #0h
	$$testPrint$main segment code 2h #0h
	$$NTABSensorInitialization$main segment table 2h #0h
	STACKSEG 0100h
CVERSION 3.41.8
CGLOBAL 01H 03H 0000H "Init_Hall_Effect_Sensors_0" 08H 02H 0D1H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Hall_Effect_Sensors_1" 08H 02H 0D2H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Hall_Effect_Sensors_0" 08H 02H 0C3H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Hall_Effect_Sensors_1" 08H 02H 0C4H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOPms" 08H 02H 0C0H 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Temperature_Sensor_20" 08H 02H 0CDH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Temperature_Sensor_21" 08H 02H 0CEH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Temperature_Sensor_22" 08H 02H 0CFH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Temperature_Sensor_23" 08H 02H 0D0H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 0B3H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 0BAH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 0BCH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_UV_Sensor_10" 08H 02H 0CAH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "DeviceSelection" 08H 02H 0C1H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_KX022" 08H 02H 0D9H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 0B4H 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Temperature_Sensor_20" 08H 02H 0DBH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Temperature_Sensor_21" 08H 02H 0DCH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Temperature_Sensor_22" 08H 02H 0DDH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 0E0H 00H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "Init_Temperature_Sensor_23" 08H 02H 0DEH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_UV_Sensor_10" 08H 02H 0D8H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 0BDH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "SensorInitialization" 08H 02H 0C2H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortD_Low" 08H 02H 0B9H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_KMX061" 08H 02H 0CCH 00H 81H 0cH 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 0BEH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 0B5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 0B8H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intADC" 08H 02H 0BFH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 0B7H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_KMX061" 08H 02H 0DAH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "testPrint" 08H 02H 0DFH 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_KX022" 08H 02H 0CBH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Ambient_Light_Sensor_5" 08H 02H 0D3H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Ambient_Light_Sensor_6" 08H 02H 0D4H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Ambient_Light_Sensor_7" 08H 02H 0D5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Ambient_Light_Sensor_8" 08H 02H 0D6H 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "Init_Ambient_Light_Sensor_9" 08H 02H 0D7H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 0B6H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 0BBH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Ambient_Light_Sensor_8" 08H 02H 0C8H 00H 81H 0cH 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Ambient_Light_Sensor_9" 08H 02H 0C9H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Ambient_Light_Sensor_5" 08H 02H 0C5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Ambient_Light_Sensor_6" 08H 02H 0C6H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "MainOp_Ambient_Light_Sensor_7" 08H 02H 0C7H 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0005H 000CH 00000016H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "_Mode" 02H 00H 08H
CSTRUCTMEM 43H 00000002H 00000002H "_Handle" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000004H "_Buf" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000006H "_Bend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000008H "_Next" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000AH "_Rend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000CH "_Rsave" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000EH "_Wend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000010H "_Back" 05H 01H 02H 00H 00H 00H
CSTRUCTMEM 42H 00000001H 00000012H "_Cbuf" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000013H "_Nback" 02H 00H 00H
CSTRUCTMEM 43H 00000002H 00000014H "_Tmpnam" 04H 03H 00H 00H 00H
CSTRUCTTAG 0000H 0000H 0004H 0001H 00000004H "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "_Off" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0003H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0002H 0002H 00000008H "_Notag"
CSTRUCTMEM 43H 00000004H 00000000H "quot" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000004H "rem" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0001H 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "quot" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "rem" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "_Ptrdifft" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "_Sizet" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 03H 00H
CTYPEDEF 0000H 0000H 42H "size_t" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 2EH 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "fpos_t" 04H 00H 05H 04H 00H
CTYPEDEF 0000H 0000H 43H "cbfI2c" 0AH 03H 00H 02H 43H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nf" 08H 02H 01H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nn" 08H 02H 00H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_ff" 08H 02H 03H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_fn" 08H 02H 02H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 43H "FILE" 04H 00H 05H 05H 00H
CTYPEDEF 0000H 0000H 43H "div_t" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "ldiv_t" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CSGLOBAL 42H 0001H "BUF_CTRL1" 02H 00H 00H
CSGLOBAL 42H 0001H "BUF_CTRL2" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_flgUartFin" 02H 00H 00H
CSGLOBAL 43H 0002H "i" 02H 00H 01H
CSGLOBAL 43H 0002H "j" 02H 00H 01H
CSGLOBAL 42H 0001H "SELF_TEST" 02H 00H 00H
CSGLOBAL 42H 0001H "STBY_REG_OFF_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "CNTL1_DATA" 02H 00H 00H
CGLOBAL 00H 42H 0002H "testI2C" 02H 00H 01H
CGLOBAL 00H 42H 0002H "ret" 02H 00H 01H
CSGLOBAL 42H 0001H "STBY_REG_DATA" 02H 00H 00H
CSGLOBAL 43H 0002H "tmp" 02H 00H 01H
CSGLOBAL 42H 0001H "SELF_TEST_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SAD_KMX61" 02H 00H 00H
CSGLOBAL 42H 0032H "PrintContent" 05H 01H 32H 00H 00H 00H
CSGLOBAL 42H 0001H "KMX61_TH" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_TL" 02H 00H 00H
CSGLOBAL 01H 000AH "_uartSetParam" 04H 00H 05H 03H 00H
CSGLOBAL 42H 0001H "ODCNTL_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "BUF_CTRL2_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "SensorPlatformSelection" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AXL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AYH" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AXH" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AZL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AYL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AZH" 02H 00H 00H
CSGLOBAL 43H 0002H "tempVal" 02H 00H 01H
CSGLOBAL 42H 0001H "CNTL2_DATA" 02H 00H 00H
CSGLOBAL 42H 0002H "SensorOutput" 02H 00H 01H
CSGLOBAL 42H 0001H "CNTL1" 02H 00H 00H
CSGLOBAL 42H 0001H "CNTL2" 02H 00H 00H
CSGLOBAL 42H 0001H "ALS8_DevAddress" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_MXL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_MYH" 02H 00H 00H
CSGLOBAL 42H 0001H "TEMP_EN_CNTL_DATA" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_MXH" 02H 00H 00H
CGLOBAL 00H 42H 0002H "KMX61_VALUE" 05H 01H 02H 00H 00H 00H
CSGLOBAL 42H 0011H "HelloWorld" 05H 01H 11H 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_MZL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_MYL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_MZH" 02H 00H 00H
CSGLOBAL 43H 0002H "tmp1" 02H 00H 01H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
CSGLOBAL 42H 0002H "ALS8_SensorReturn" 05H 01H 02H 00H 00H 00H
CSGLOBAL 42H 0001H "SensorPlatformSelection_Temp" 02H 00H 00H
CSGLOBAL 42H 0001H "ALS8_PowerOn" 02H 00H 00H
CSGLOBAL 42H 0001H "ALS8_AutoResolution" 02H 00H 00H
CSGLOBAL 42H 0001H "SensorIntializationFlag" 02H 00H 00H
CSGLOBAL 42H 0001H "ODCNTL" 02H 00H 00H
CSGLOBAL 42H 0001H "TEMP_EN_CNTL" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_flgADCFin" 02H 00H 00H
CSGLOBAL 42H 0001H "STBY_REG" 02H 00H 00H
CSGLOBAL 42H 0001H "BUF_CTRL1_DATA" 02H 00H 00H
CFILE 0001H 0000085AH "main\\ML610112.H"
CFILE 0002H 000000D8H "main\\stdlib.h"
CFILE 0003H 0000007AH "main\\yvals.h"
CFILE 0004H 0000006BH "uart\\uart.h"
CFILE 0005H 00000027H "common\\common.h"
CFILE 0006H 00000057H "irq\\irq.h"
CFILE 0007H 00000023H "main\\mcu.h"
CFILE 0008H 00000045H "i2c\\i2c.h"
CFILE 0009H 00000046H "tbc\\tbc.h"
CFILE 000AH 000001B8H "timer\\timer.h"
CFILE 000BH 000000EEH "main\\stdio.h"
CFILE 0000H 000006FCH "main\\main.c"

	rseg $$main$main
CFUNCTION 224

_main	:
CBLOCK 224 1 303

;;{ 
CLINEA 0000H 0001H 012FH 0001H 0002H
CBLOCK 224 2 303

;;	Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 0130H 0002H 0047H
	bl	_Initialization

;;	Init_Ambient_Light_Sensor_8();
CLINEA 0000H 0001H 0133H 0002H 001FH
	bl	_Init_Ambient_Light_Sensor_8

;;MainLoop:
CLINEA 0000H 0001H 0136H 0001H 0009H
CLABEL 001FH "MainLoop"
_$L31 :

;;	main_clrWDT();
CLINEA 0000H 0001H 0137H 0002H 000FH
	bl	_main_clrWDT

;;	MainOp_Ambient_Light_Sensor_8();
CLINEA 0000H 0001H 013AH 0002H 0021H
	bl	_MainOp_Ambient_Light_Sensor_8

;;	HLT = 1;	//Wait time here depends on the WDT timing
CLINEA 0000H 0001H 0181H 0002H 0034H
	sb	0f009h.0

;;	goto MainLoop;
CLINEA 0000H 0001H 0182H 0002H 000FH
	bal	_$L31
CBLOCKEND 224 2 387

;;}
CLINEA 0000H 0001H 0183H 0001H 0001H
CBLOCKEND 224 1 387
CFUNCTIONEND 224


	rseg $$Initialization$main
CFUNCTION 180

_Initialization	:
CBLOCK 180 1 399

;;static void Initialization(void){
CLINEA 0000H 0001H 018FH 0001H 0021H
	push	lr
CBLOCK 180 2 399
CRET 0000H

;;	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 0193H 0002H 0045H
	sb	0f02ah.0

;;	DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 0194H 0002H 0042H
	rb	0f02ah.2

;;	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
CLINEA 0000H 0001H 0195H 0002H 0032H
	sb	0f02ah.3

;;	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 0196H 0002H 0045H
	sb	0f02ah.6

;;	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
CLINEA 0000H 0001H 0197H 0002H 0047H
	rb	0f02ah.7

;;	BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 0199H 0002H 0026H
	mov	r0,	#00h
	st	r0,	0f02ch

;;	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 019AH 0002H 0052H
	st	r0,	0f02eh

;;	BLKCON7 = 0x0F; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 019BH 0002H 0058H
	mov	r0,	#0fh
	st	r0,	0f02fh

;;	PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
CLINEA 0000H 0001H 019EH 0002H 003CH
	bl	_PortA_Low

;;	PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
CLINEA 0000H 0001H 019FH 0002H 003CH
	bl	_PortB_Low

;;	PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
CLINEA 0000H 0001H 01A0H 0002H 003CH
	bl	_PortC_Low

;;	PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low
CLINEA 0000H 0001H 01A1H 0002H 003CH
	bl	_PortD_Low

;;    SetOSC();
CLINEA 0000H 0001H 01A4H 0005H 000DH
	bl	_SetOSC

;;	irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 01A8H 0002H 0020H
	bl	_irq_di

;;	irq_init();	// Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 01A9H 0002H 003FH
	bl	_irq_init

;;	IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
CLINEA 0000H 0001H 01ACH 0002H 0033H
	mov	r0,	#00h
	st	r0,	0f017h
	st	r0,	0f016h
	st	r0,	0f015h
	st	r0,	0f014h
	st	r0,	0f013h
	st	r0,	0f012h
	st	r0,	0f011h
	st	r0,	0f010h

;;	IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;
CLINEA 0000H 0001H 01AEH 0002H 003BH
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;	E2H = 0;	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
CLINEA 0000H 0001H 01B0H 0002H 0045H
	rb	0f017h.3

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
CLINEA 0000H 0001H 01B2H 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0fh
	bl	_irq_setHdr

;;	EUA0 = 1; 	// EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 01B3H 0002H 004AH
	sb	0f014h.0

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 01B5H 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;	EI2CM = 1;
CLINEA 0000H 0001H 01B6H 0002H 000BH
	sb	0f012h.7

;;	QI2CM = 0;
CLINEA 0000H 0001H 01B7H 0002H 000BH
	rb	0f01ah.7

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_SADINT, _intADC );
CLINEA 0000H 0001H 01BAH 0002H 003BH
	mov	r2,	#BYTE1 OFFSET __intADC
	mov	r3,	#BYTE2 OFFSET __intADC
	mov	r0,	#0ah
	bl	_irq_setHdr

;;	ESAD = 1;
CLINEA 0000H 0001H 01BBH 0002H 000AH
	sb	0f012h.2

;;	QSAD = 0;
CLINEA 0000H 0001H 01BCH 0002H 000AH
	rb	0f01ah.2

;;	irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 01C8H 0002H 001FH
	bl	_irq_ei

;;	WDTMOD = 0x01; 	
CLINEA 0000H 0001H 01D4H 0002H 0011H
	mov	r0,	#01h
	st	r0,	0f00fh

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 01D5H 0002H 001DH
	bl	_main_clrWDT

;;	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
CLINEA 0000H 0001H 01DBH 0002H 0045H
	mov	r0,	#00h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#01h
	bl	_i2c_init
	add	sp,	#2 

;;			     &_uartSetParam );						/* Param... 	 */
CLINEA 0000H 0001H 01E0H 0009H 002FH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;	uart_PortSet();
CLINEA 0000H 0001H 01E1H 0002H 0010H
	bl	_uart_PortSet
CBLOCKEND 180 2 485

;;}//End Initialization
CLINEA 0000H 0001H 01E5H 0001H 0015H
	pop	pc
CBLOCKEND 180 1 485
CFUNCTIONEND 180


	rseg $$DeviceSelection$main
CFUNCTION 193

_DeviceSelection	:
CBLOCK 193 1 499

;;{  
CLINEA 0000H 0001H 01F3H 0001H 0003H
CBLOCK 193 2 499

;;	SensorPlatformSelection_Temp |= PD0D;
CLINEA 0000H 0001H 01F6H 0002H 0026H
	l	r0,	0f268h
	and	r0,	#01h
	st	r0,	NEAR _SensorPlatformSelection_Temp

;;	SensorPlatformSelection_Temp |= PD1D<<1;
CLINEA 0000H 0001H 01F7H 0002H 0029H
	l	r0,	0f268h
	srl	r0,	#01h
	and	r0,	#01h
	sll	r0,	#01h
	l	r1,	NEAR _SensorPlatformSelection_Temp
	or	r1,	r0

;;	SensorPlatformSelection_Temp |= PD2D<<2;
CLINEA 0000H 0001H 01F8H 0002H 0029H
	l	r0,	0f268h
	srl	r0,	#02h
	and	r0,	#01h
	sll	r0,	#02h
	or	r1,	r0

;;	SensorPlatformSelection_Temp |= PD3D<<3;
CLINEA 0000H 0001H 01F9H 0002H 0029H
	l	r0,	0f268h
	srl	r0,	#03h
	and	r0,	#01h
	sll	r0,	#03h
	or	r1,	r0

;;	SensorPlatformSelection_Temp |= PD4D<<4; 
CLINEA 0000H 0001H 01FAH 0002H 002AH
	l	r0,	0f268h
	srl	r0,	#04h
	and	r0,	#01h
	sll	r0,	#04h
	or	r1,	r0

;;	SensorPlatformSelection_Temp |= PD5D<<5; 
CLINEA 0000H 0001H 01FBH 0002H 002AH
	l	r0,	0f268h
	srl	r0,	#05h
	and	r0,	#01h
	sll	r0,	#05h
	or	r1,	r0
	st	r1,	NEAR _SensorPlatformSelection_Temp

;;	if(SensorPlatformSelection_Temp != SensorPlatformSelection){
CLINEA 0000H 0001H 01FDH 0002H 003DH
	l	r0,	NEAR _SensorPlatformSelection
	cmp	r0,	r1
	beq	_$L34
CBLOCK 193 3 509

;;		SensorIntializationFlag = 1;
CLINEA 0000H 0001H 01FEH 0003H 001EH
	mov	r0,	#01h
	st	r0,	NEAR _SensorIntializationFlag

;;		SensorPlatformSelection = SensorPlatformSelection_Temp;
CLINEA 0000H 0001H 01FFH 0003H 0039H
	st	r1,	NEAR _SensorPlatformSelection
CBLOCKEND 193 3 512

;;	}
CLINEA 0000H 0000H 0200H 0002H 0002H
_$L34 :
CBLOCKEND 193 2 513

;;}
CLINEA 0000H 0001H 0201H 0001H 0001H
	rt
CBLOCKEND 193 1 513
CFUNCTIONEND 193


	rseg $$SensorInitialization$main
CFUNCTION 194

_SensorInitialization	:
CBLOCK 194 1 523

;;{  
CLINEA 0000H 0001H 020BH 0001H 0003H
	push	lr
CBLOCK 194 2 523
CRET 0000H

;;	switch(SensorPlatformSelection){
CLINEA 0000H 0001H 020CH 0002H 0021H
	l	r0,	NEAR _SensorPlatformSelection
	mov	r1,	#00h
CBLOCK 194 3 524
	cmp	r0,	#017h
	cmpc	r1,	#00h
	bgt	_$L40
	sllc	r1,	#01h
	sll	r0,	#01h
	l	er0,	NEAR _$M4[er0]
	b	er0

;;	} 	 
_$L40 :
CBLOCKEND 194 2 568

;;}
CLINEA 0000H 0001H 0238H 0001H 0001H
	pop	pc

;;		case 0:
CLINEA 0000H 0001H 020DH 0003H 0009H
_$S42 :

;;			Init_Hall_Effect_Sensors_0(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 020EH 0004H 0056H
	bl	_Init_Hall_Effect_Sensors_0

;;			break;
CLINEA 0000H 0001H 020FH 0004H 0009H
	bal	_$L40

;;		case 1:
CLINEA 0000H 0001H 0210H 0003H 0009H
_$S43 :

;;			Init_Hall_Effect_Sensors_1(); // Refer to function description for list of sensors
CLINEA 0000H 0001H 0211H 0004H 0055H
	bl	_Init_Hall_Effect_Sensors_1

;;			break;
CLINEA 0000H 0001H 0212H 0004H 0009H
	bal	_$L40

;;		case 5: 
CLINEA 0000H 0001H 0213H 0003H 000AH
_$S44 :

;;			Init_Ambient_Light_Sensor_5(); // Refer to function description for list of sensors
CLINEA 0000H 0001H 0214H 0004H 0056H
	bl	_Init_Ambient_Light_Sensor_5

;;			break;
CLINEA 0000H 0001H 0215H 0004H 0009H
	bal	_$L40

;;		case 6:
CLINEA 0000H 0001H 0216H 0003H 0009H
_$S45 :

;;			Init_Ambient_Light_Sensor_6(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0217H 0004H 0057H
	bl	_Init_Ambient_Light_Sensor_6

;;			break;
CLINEA 0000H 0001H 0218H 0004H 0009H
	bal	_$L40

;;		case 7:
CLINEA 0000H 0001H 0219H 0003H 0009H
_$S46 :

;;			Init_Ambient_Light_Sensor_7(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 021AH 0004H 0057H
	bl	_Init_Ambient_Light_Sensor_7

;;			break;
CLINEA 0000H 0001H 021BH 0004H 0009H
	bal	_$L40

;;		case 8:
CLINEA 0000H 0001H 021CH 0003H 0009H
_$S47 :

;;			Init_Ambient_Light_Sensor_8(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 021DH 0004H 0057H
	bl	_Init_Ambient_Light_Sensor_8

;;			break;
CLINEA 0000H 0001H 021EH 0004H 0009H
	bal	_$L40

;;		case 9:
CLINEA 0000H 0001H 021FH 0003H 0009H
_$S48 :

;;			Init_Ambient_Light_Sensor_9(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0220H 0004H 0057H
	bl	_Init_Ambient_Light_Sensor_9

;;			break;
CLINEA 0000H 0001H 0221H 0004H 0009H
	bal	_$L40

;;		case 10:
CLINEA 0000H 0001H 0222H 0003H 000AH
_$S49 :

;;			Init_UV_Sensor_10(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0223H 0004H 004DH
	bl	_Init_UV_Sensor_10

;;			break;
CLINEA 0000H 0001H 0224H 0004H 0009H
	bal	_$L40

;;		case 15:
CLINEA 0000H 0001H 0225H 0003H 000AH
_$S50 :

;;			Init_KX022(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0226H 0004H 0046H
	bl	_Init_KX022

;;			break;
CLINEA 0000H 0001H 0227H 0004H 0009H
	bal	_$L40

;;		case 16:
CLINEA 0000H 0001H 0228H 0003H 000AH
_$S51 :

;;			Init_KMX061(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0229H 0004H 0047H
	bl	_Init_KMX061

;;			break;
CLINEA 0000H 0001H 022AH 0004H 0009H
	bal	_$L40

;;		case 20:
CLINEA 0000H 0001H 022BH 0003H 000AH
_$S52 :

;;			Init_Temperature_Sensor_20(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 022CH 0004H 0056H
	bl	_Init_Temperature_Sensor_20

;;			break;
CLINEA 0000H 0001H 022DH 0004H 0009H
	bal	_$L40

;;		case 21:
CLINEA 0000H 0001H 022EH 0003H 000AH
_$S53 :

;;			Init_Temperature_Sensor_21(); // Refer to function description for list of sensors
CLINEA 0000H 0001H 022FH 0004H 0055H
	bl	_Init_Temperature_Sensor_21

;;			break;
CLINEA 0000H 0001H 0230H 0004H 0009H
	bal	_$L40

;;		case 22:
CLINEA 0000H 0001H 0231H 0003H 000AH
_$S54 :

;;			Init_Temperature_Sensor_22(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0232H 0004H 0056H
	bl	_Init_Temperature_Sensor_22

;;			break;
CLINEA 0000H 0001H 0233H 0004H 0009H
	bal	_$L40

;;		case 23:
CLINEA 0000H 0001H 0234H 0003H 000AH
_$S55 :

;;			Init_Temperature_Sensor_23(); // Refer to function description for list of sensors
CLINEA 0000H 0001H 0235H 0004H 0055H
	bl	_Init_Temperature_Sensor_23

;;			break; 
CLINEA 0000H 0001H 0236H 0004H 000AH
	bal	_$L40
CBLOCKEND 194 3 567
CBLOCKEND 194 1 568
CFUNCTIONEND 194


	rseg $$testPrint$main
CFUNCTION 223

_testPrint	:
CBLOCK 223 1 571

;;{
CLINEA 0000H 0001H 023BH 0001H 0001H
	push	lr
	push	er4
CBLOCK 223 2 571
CRET 0002H
CARGUMENT 47H 0002H 0024H "CS" 04H 03H 00H 00H 00H
CLOCAL 47H 0002H 0026H 0002H "c" 02H 00H 01H

;;		int c = sprintf(PrintContent, "Selected %d\r", *CS);  
CLINEA 0000H 0001H 023CH 0003H 0038H
	l	r0,	[er0]
	extbw	er0
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S57
	mov	r1,	#BYTE2 OFFSET $$S57
	push	er0
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	push	er0
	bl	_sprintf_nn
	add	sp,	#6 
	mov	er4,	er0

;;		_flgUartFin = 0; 
CLINEA 0000H 0001H 023EH 0003H 0013H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 023FH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(PrintContent, c, _funcUartFin);  
CLINEA 0000H 0001H 0240H 0003H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	er4
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0241H 0001H 0001H
	bal	_$L62

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0241H 0003H 001AH
_$L60 :
CBLOCK 223 3 577

;;			main_clrWDT();
CLINEA 0000H 0001H 0242H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 223 3 579

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0241H 0001H 0001H
_$L62 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L60
CBLOCKEND 223 2 580

;;}
CLINEA 0000H 0001H 0244H 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 223 1 580
CFUNCTIONEND 223


	rseg $$MainOp_Hall_Effect_Sensors_0$main
CFUNCTION 195

_MainOp_Hall_Effect_Sensors_0	:
CBLOCK 195 1 607

;;void MainOp_Hall_Effect_Sensors_0(){
CLINEA 0000H 0001H 025FH 0001H 0024H
CBLOCK 195 2 607
CBLOCKEND 195 2 616

;;}
CLINEA 0000H 0001H 0268H 0001H 0001H
	rt
CBLOCKEND 195 1 616
CFUNCTIONEND 195


	rseg $$MainOp_Hall_Effect_Sensors_1$main
CFUNCTION 196

_MainOp_Hall_Effect_Sensors_1	:
CBLOCK 196 1 631

;;void MainOp_Hall_Effect_Sensors_1(){
CLINEA 0000H 0001H 0277H 0001H 0024H
CBLOCK 196 2 631
CBLOCKEND 196 2 640

;;}
CLINEA 0000H 0001H 0280H 0001H 0001H
	rt
CBLOCKEND 196 1 640
CFUNCTIONEND 196


	rseg $$MainOp_Ambient_Light_Sensor_5$main
CFUNCTION 197

_MainOp_Ambient_Light_Sensor_5	:
CBLOCK 197 1 658

;;void MainOp_Ambient_Light_Sensor_5(){
CLINEA 0000H 0001H 0292H 0001H 0025H
CBLOCK 197 2 658
CBLOCKEND 197 2 667

;;}
CLINEA 0000H 0001H 029BH 0001H 0001H
	rt
CBLOCKEND 197 1 667
CFUNCTIONEND 197


	rseg $$MainOp_Ambient_Light_Sensor_6$main
CFUNCTION 198

_MainOp_Ambient_Light_Sensor_6	:
CBLOCK 198 1 682

;;void MainOp_Ambient_Light_Sensor_6(){
CLINEA 0000H 0001H 02AAH 0001H 0025H
CBLOCK 198 2 682
CBLOCKEND 198 2 691

;;}
CLINEA 0000H 0001H 02B3H 0001H 0001H
	rt
CBLOCKEND 198 1 691
CFUNCTIONEND 198


	rseg $$MainOp_Ambient_Light_Sensor_7$main
CFUNCTION 199

_MainOp_Ambient_Light_Sensor_7	:
CBLOCK 199 1 704

;;void MainOp_Ambient_Light_Sensor_7(){
CLINEA 0000H 0001H 02C0H 0001H 0025H
CBLOCK 199 2 704
CBLOCKEND 199 2 713

;;}
CLINEA 0000H 0001H 02C9H 0001H 0001H
	rt
CBLOCKEND 199 1 713
CFUNCTIONEND 199


	rseg $$MainOp_Ambient_Light_Sensor_8$main
CFUNCTION 200

_MainOp_Ambient_Light_Sensor_8	:
CBLOCK 200 1 726

;;void MainOp_Ambient_Light_Sensor_8(){
CLINEA 0000H 0001H 02D6H 0001H 0025H
	push	lr
	push	er4
CBLOCK 200 2 726
CRET 0002H
CLOCAL 47H 0002H 0026H 0002H "c" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "Return" 02H 00H 01H

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 02E1H 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();				 													//Make sure I2C is not currently running
CLINEA 0000H 0001H 02E2H 0002H 0046H
	bl	_i2c_stop

;;	I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 02E3H 0002H 0035H
	rb	0f2a4h.1

;;	i2c_startReceive(ALS8_DevAddress, &ALS8_SensorReturn, 0, &ALS8_SensorReturn, 2, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 02E4H 0002H 0082H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#2 
	push	er0
	mov	r0,	#BYTE1 OFFSET _ALS8_SensorReturn
	mov	r1,	#BYTE2 OFFSET _ALS8_SensorReturn
	push	er0
	mov	er0,	#0 
	push	er0
	mov	r2,	#BYTE1 OFFSET _ALS8_SensorReturn
	mov	r3,	#BYTE2 OFFSET _ALS8_SensorReturn
	l	r0,	NEAR _ALS8_DevAddress
	bl	_i2c_startReceive
	add	sp,	#8 

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 02E5H 0001H 0001H
	bal	_$L78

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 02E5H 0002H 0051H
_$L71 :
CBLOCK 200 3 741

;;		main_clrWDT();
CLINEA 0000H 0001H 02E6H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 200 3 743

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 02E5H 0001H 0001H
_$L78 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L71

;;	c = sprintf(PrintContent, "ALSRaw = %u \r", Return);  
CLINEA 0000H 0000H 02EBH 0002H 0037H
	l	r0,	NEAR _ALS8_SensorReturn+01h
	mov	r1,	#00h
	l	r2,	NEAR _ALS8_SensorReturn
	mov	r3,	r2
	mov	r2,	#00h
	add	er0,	er2
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S73
	mov	r1,	#BYTE2 OFFSET $$S73
	push	er0
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	push	er0
	bl	_sprintf_nn
	add	sp,	#6 
	mov	er4,	er0

;;	_flgUartFin = 0; 
CLINEA 0000H 0001H 02EDH 0002H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 02EEH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(PrintContent, c, _funcUartFin);  
CLINEA 0000H 0001H 02EFH 0002H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	er4
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F0H 0001H 0001H
	bal	_$L79

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F0H 0002H 0019H
_$L76 :
CBLOCK 200 4 752

;;		main_clrWDT();
CLINEA 0000H 0001H 02F1H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 200 4 754

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 02F0H 0001H 0001H
_$L79 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L76
CBLOCKEND 200 2 755

;;}
CLINEA 0000H 0001H 02F3H 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 200 1 755
CFUNCTIONEND 200


	rseg $$MainOp_Ambient_Light_Sensor_9$main
CFUNCTION 201

_MainOp_Ambient_Light_Sensor_9	:
CBLOCK 201 1 768

;;void MainOp_Ambient_Light_Sensor_9(){
CLINEA 0000H 0001H 0300H 0001H 0025H
CBLOCK 201 2 768
CBLOCKEND 201 2 777

;;}
CLINEA 0000H 0001H 0309H 0001H 0001H
	rt
CBLOCKEND 201 1 777
CFUNCTIONEND 201


	rseg $$MainOp_UV_Sensor_10$main
CFUNCTION 202

_MainOp_UV_Sensor_10	:
CBLOCK 202 1 790

;;void MainOp_UV_Sensor_10(){
CLINEA 0000H 0001H 0316H 0001H 001BH
CBLOCK 202 2 790
CBLOCKEND 202 2 799

;;}
CLINEA 0000H 0001H 031FH 0001H 0001H
	rt
CBLOCKEND 202 1 799
CFUNCTIONEND 202


	rseg $$MainOp_KX022$main
CFUNCTION 203

_MainOp_KX022	:
CBLOCK 203 1 812

;;void MainOp_KX022(){
CLINEA 0000H 0001H 032CH 0001H 0014H
CBLOCK 203 2 812
CBLOCKEND 203 2 821

;;}
CLINEA 0000H 0001H 0335H 0001H 0001H
	rt
CBLOCKEND 203 1 821
CFUNCTIONEND 203


	rseg $$MainOp_KMX061$main
CFUNCTION 204

_MainOp_KMX061	:
CBLOCK 204 1 834

;;void MainOp_KMX061(){ 
CLINEA 0000H 0001H 0342H 0001H 0016H
	push	lr
	push	er4
CBLOCK 204 2 834
CRET 0002H
CLOCAL 4BH 0001H 0000H 0002H "Flag" 02H 00H 00H
CLOCAL 47H 0002H 0026H 0002H "c" 02H 00H 01H

;;	        while(PC7D)
CLINEA 0000H 0001H 0346H 000AH 0014H
	b	_$L98
_$L86 :
CBLOCK 204 3 839

;;				main_clrWDT(); 
CLINEA 0000H 0001H 0348H 0005H 0013H
	bl	_main_clrWDT

;;				_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 034CH 0005H 003EH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;				i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 034DH 0005H 0049H
	bl	_i2c_stop

;;				I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 034EH 0005H 0038H
	rb	0f2a4h.1

;;				i2c_startReceive(SAD_KMX61, &KMX61_AXL, 1, &KMX61_VALUE, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 034FH 0005H 0071H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _KMX61_VALUE
	mov	r1,	#BYTE2 OFFSET _KMX61_VALUE
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _KMX61_AXL
	mov	r3,	#BYTE2 OFFSET _KMX61_AXL
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startReceive
	add	sp,	#8 

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0350H 0001H 0001H
	bal	_$L101

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0350H 0005H 0054H
_$L90 :
CBLOCK 204 4 848

;;					main_clrWDT();
CLINEA 0000H 0001H 0351H 0006H 0013H
	bl	_main_clrWDT
CBLOCKEND 204 4 850

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0350H 0001H 0001H
_$L101 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L90

;;				tmp = (KMX61_VALUE[0]);
CLINEA 0000H 0001H 0353H 0005H 001BH
	l	r0,	NEAR _KMX61_VALUE
	mov	r1,	#00h
	st	er0,	NEAR _tmp

;;				_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0354H 0005H 003EH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;				i2c_stop();				 													//Make sure I2C is not currently running
CLINEA 0000H 0001H 0355H 0005H 0049H
	bl	_i2c_stop

;;				I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0356H 0005H 0038H
	rb	0f2a4h.1

;;				i2c_startReceive(SAD_KMX61, &KMX61_AXH, 1, &KMX61_VALUE, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0357H 0005H 0071H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _KMX61_VALUE
	mov	r1,	#BYTE2 OFFSET _KMX61_VALUE
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _KMX61_AXH
	mov	r3,	#BYTE2 OFFSET _KMX61_AXH
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startReceive
	add	sp,	#8 

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0358H 0001H 0001H
	bal	_$L102

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0358H 0005H 0054H
_$L94 :
CBLOCK 204 5 856

;;					main_clrWDT();
CLINEA 0000H 0001H 0359H 0006H 0013H
	bl	_main_clrWDT
CBLOCKEND 204 5 858

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0358H 0001H 0001H
_$L102 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L94

;;				tmp1 = (KMX61_VALUE[0])<<8; 
CLINEA 0000H 0001H 035BH 0005H 0020H
	l	r0,	NEAR _KMX61_VALUE
	mov	r1,	r0
	mov	r0,	#00h
	st	er0,	NEAR _tmp1

;;				tempVal = (tmp|tmp1)>>2;
CLINEA 0000H 0001H 035CH 0005H 001CH
	l	er2,	NEAR _tmp
	or	r0,	r2
	or	r1,	r3
	srlc	r0,	#02h
	sra	r1,	#02h
	st	er0,	NEAR _tempVal

;;				c = sprintf(PrintContent, "ax( %d )\r", tempVal);  
CLINEA 0000H 0000H 035EH 0005H 0037H
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S96
	mov	r1,	#BYTE2 OFFSET $$S96
	push	er0
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	push	er0
	bl	_sprintf_nn
	add	sp,	#6 
	mov	er4,	er0

;;				_flgUartFin = 0; 
CLINEA 0000H 0001H 0360H 0005H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;				uart_stop();
CLINEA 0000H 0001H 0361H 0005H 0010H
	bl	_uart_stop

;;				uart_startSend(PrintContent, c, _funcUartFin);  
CLINEA 0000H 0001H 0362H 0005H 0034H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	er4
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	bl	_uart_startSend
	add	sp,	#2 

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0363H 0001H 0001H
	bal	_$L103

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0363H 0005H 001CH
_$L99 :
CBLOCK 204 6 867

;;					main_clrWDT();
CLINEA 0000H 0001H 0364H 0006H 0013H
	bl	_main_clrWDT
CBLOCKEND 204 6 869

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0363H 0001H 0001H
_$L103 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L99

;;				}  
CLINEA 0000H 0000H 0365H 0005H 0007H
_$L98 :
CBLOCKEND 204 3 871

;;	        while(PC7D)
CLINEA 0000H 0000H 0346H 0000H 0000H
	tb	0f260h.7
	beq	_$M16
	b	_$L86
_$M16 :
CBLOCKEND 204 2 872

;;}
CLINEA 0000H 0001H 0368H 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 204 1 872
CFUNCTIONEND 204


	rseg $$MainOp_Temperature_Sensor_20$main
CFUNCTION 205

_MainOp_Temperature_Sensor_20	:
CBLOCK 205 1 885

;;void MainOp_Temperature_Sensor_20(){
CLINEA 0000H 0001H 0375H 0001H 0024H
CBLOCK 205 2 885
CBLOCKEND 205 2 894

;;}
CLINEA 0000H 0001H 037EH 0001H 0001H
	rt
CBLOCKEND 205 1 894
CFUNCTIONEND 205


	rseg $$MainOp_Temperature_Sensor_21$main
CFUNCTION 206

_MainOp_Temperature_Sensor_21	:
CBLOCK 206 1 912

;;void MainOp_Temperature_Sensor_21(){
CLINEA 0000H 0001H 0390H 0001H 0024H
CBLOCK 206 2 912
CBLOCKEND 206 2 921

;;}
CLINEA 0000H 0001H 0399H 0001H 0001H
	rt
CBLOCKEND 206 1 921
CFUNCTIONEND 206


	rseg $$MainOp_Temperature_Sensor_22$main
CFUNCTION 207

_MainOp_Temperature_Sensor_22	:
CBLOCK 207 1 939

;;void MainOp_Temperature_Sensor_22(){
CLINEA 0000H 0001H 03ABH 0001H 0024H
CBLOCK 207 2 939
CBLOCKEND 207 2 948

;;}
CLINEA 0000H 0001H 03B4H 0001H 0001H
	rt
CBLOCKEND 207 1 948
CFUNCTIONEND 207


	rseg $$MainOp_Temperature_Sensor_23$main
CFUNCTION 208

_MainOp_Temperature_Sensor_23	:
CBLOCK 208 1 965

;;void MainOp_Temperature_Sensor_23(){
CLINEA 0000H 0001H 03C5H 0001H 0024H
CBLOCK 208 2 965
CBLOCKEND 208 2 974

;;}
CLINEA 0000H 0001H 03CEH 0001H 0001H
	rt
CBLOCKEND 208 1 974
CFUNCTIONEND 208


	rseg $$Init_Hall_Effect_Sensors_0$main
CFUNCTION 209

_Init_Hall_Effect_Sensors_0	:
CBLOCK 209 1 1000

;;void Init_Hall_Effect_Sensors_0(){
CLINEA 0000H 0001H 03E8H 0001H 0022H
CBLOCK 209 2 1000
CBLOCKEND 209 2 1009

;;}
CLINEA 0000H 0001H 03F1H 0001H 0001H
	rt
CBLOCKEND 209 1 1009
CFUNCTIONEND 209


	rseg $$Init_Hall_Effect_Sensors_1$main
CFUNCTION 210

_Init_Hall_Effect_Sensors_1	:
CBLOCK 210 1 1024

;;void Init_Hall_Effect_Sensors_1(){
CLINEA 0000H 0001H 0400H 0001H 0022H
CBLOCK 210 2 1024
CBLOCKEND 210 2 1033

;;}
CLINEA 0000H 0001H 0409H 0001H 0001H
	rt
CBLOCKEND 210 1 1033
CFUNCTIONEND 210


	rseg $$Init_Ambient_Light_Sensor_5$main
CFUNCTION 211

_Init_Ambient_Light_Sensor_5	:
CBLOCK 211 1 1051

;;void Init_Ambient_Light_Sensor_5(){
CLINEA 0000H 0001H 041BH 0001H 0023H
CBLOCK 211 2 1051
CBLOCKEND 211 2 1060

;;}
CLINEA 0000H 0001H 0424H 0001H 0001H
	rt
CBLOCKEND 211 1 1060
CFUNCTIONEND 211


	rseg $$Init_Ambient_Light_Sensor_6$main
CFUNCTION 212

_Init_Ambient_Light_Sensor_6	:
CBLOCK 212 1 1075

;;void Init_Ambient_Light_Sensor_6(){
CLINEA 0000H 0001H 0433H 0001H 0023H
CBLOCK 212 2 1075
CBLOCKEND 212 2 1084

;;}
CLINEA 0000H 0001H 043CH 0001H 0001H
	rt
CBLOCKEND 212 1 1084
CFUNCTIONEND 212


	rseg $$Init_Ambient_Light_Sensor_7$main
CFUNCTION 213

_Init_Ambient_Light_Sensor_7	:
CBLOCK 213 1 1097

;;void Init_Ambient_Light_Sensor_7(){
CLINEA 0000H 0001H 0449H 0001H 0023H
CBLOCK 213 2 1097
CBLOCKEND 213 2 1106

;;}
CLINEA 0000H 0001H 0452H 0001H 0001H
	rt
CBLOCKEND 213 1 1106
CFUNCTIONEND 213


	rseg $$Init_Ambient_Light_Sensor_8$main
CFUNCTION 214

_Init_Ambient_Light_Sensor_8	:
CBLOCK 214 1 1119

;;void Init_Ambient_Light_Sensor_8(){
CLINEA 0000H 0001H 045FH 0001H 0023H
	push	lr
CBLOCK 214 2 1119
CRET 0000H

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0461H 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0462H 0002H 0046H
	bl	_i2c_stop

;;	I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0463H 0002H 0035H
	rb	0f2a4h.1

;;	i2c_startSend(ALS8_DevAddress, &ALS8_PowerOn, 0, &ALS8_PowerOn, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0464H 0002H 0075H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _ALS8_PowerOn
	mov	r1,	#BYTE2 OFFSET _ALS8_PowerOn
	push	er0
	mov	er0,	#0 
	push	er0
	mov	r2,	#BYTE1 OFFSET _ALS8_PowerOn
	mov	r3,	#BYTE2 OFFSET _ALS8_PowerOn
	l	r0,	NEAR _ALS8_DevAddress
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0465H 0001H 0001H
	bal	_$L122

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0465H 0002H 0051H
_$L116 :
CBLOCK 214 3 1125

;;		main_clrWDT();
CLINEA 0000H 0001H 0466H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 214 3 1127

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0465H 0001H 0001H
_$L122 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L116

;;	_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 046AH 0002H 003BH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();				 													//Make sure I2C is not currently running
CLINEA 0000H 0001H 046BH 0002H 0046H
	bl	_i2c_stop

;;	I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 046CH 0002H 0035H
	rb	0f2a4h.1

;;	i2c_startSend(ALS8_DevAddress, &ALS8_AutoResolution, 0, &ALS8_AutoResolution, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 046DH 0002H 0083H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _ALS8_AutoResolution
	mov	r1,	#BYTE2 OFFSET _ALS8_AutoResolution
	push	er0
	mov	er0,	#0 
	push	er0
	mov	r2,	#BYTE1 OFFSET _ALS8_AutoResolution
	mov	r3,	#BYTE2 OFFSET _ALS8_AutoResolution
	l	r0,	NEAR _ALS8_DevAddress
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 046EH 0001H 0001H
	bal	_$L123

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 046EH 0002H 0051H
_$L120 :
CBLOCK 214 4 1134

;;		main_clrWDT();
CLINEA 0000H 0001H 046FH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 214 4 1136

;;	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 046EH 0001H 0001H
_$L123 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L120
CBLOCKEND 214 2 1138

;;}
CLINEA 0000H 0001H 0472H 0001H 0001H
	pop	pc
CBLOCKEND 214 1 1138
CFUNCTIONEND 214


	rseg $$Init_Ambient_Light_Sensor_9$main
CFUNCTION 215

_Init_Ambient_Light_Sensor_9	:
CBLOCK 215 1 1151

;;void Init_Ambient_Light_Sensor_9(){
CLINEA 0000H 0001H 047FH 0001H 0023H
CBLOCK 215 2 1151
CBLOCKEND 215 2 1154

;;}
CLINEA 0000H 0001H 0482H 0001H 0001H
	rt
CBLOCKEND 215 1 1154
CFUNCTIONEND 215


	rseg $$Init_UV_Sensor_10$main
CFUNCTION 216

_Init_UV_Sensor_10	:
CBLOCK 216 1 1167

;;void Init_UV_Sensor_10(){
CLINEA 0000H 0001H 048FH 0001H 0019H
CBLOCK 216 2 1167

;;	PA2DIR = 0;		
CLINEA 0000H 0001H 0492H 0002H 000EH
	rb	0f251h.2

;;	PA2C0 = 1;		
CLINEA 0000H 0001H 0493H 0002H 000DH
	sb	0f252h.2

;;	PA2C1 = 1;		
CLINEA 0000H 0001H 0494H 0002H 000DH
	sb	0f253h.2

;;	PA2MD0 = 0;
CLINEA 0000H 0001H 0495H 0002H 000CH
	rb	0f254h.2

;;	PA2MD1 = 0;
CLINEA 0000H 0001H 0496H 0002H 000CH
	rb	0f255h.2

;;	PA2D = 1;
CLINEA 0000H 0001H 0497H 0002H 000AH
	sb	0f250h.2

;;	PA1DIR = 1;		//GPIO Input
CLINEA 0000H 0001H 049AH 0002H 001AH
	sb	0f251h.1

;;	SACH1 = 1;		//This enables the ADC Channel 1 from the corrected pin
CLINEA 0000H 0001H 049BH 0002H 0044H
	sb	0f2f2h.1

;;	SALP = 0;		//Single Read or Continuous Read... Single = 0, Consecutive = 1
CLINEA 0000H 0001H 049CH 0002H 004BH
	rb	0f2f0h.0
CBLOCKEND 216 2 1181

;;}
CLINEA 0000H 0001H 049DH 0001H 0001H
	rt
CBLOCKEND 216 1 1181
CFUNCTIONEND 216


	rseg $$Init_KX022$main
CFUNCTION 217

_Init_KX022	:
CBLOCK 217 1 1194

;;void Init_KX022(){
CLINEA 0000H 0001H 04AAH 0001H 0012H
CBLOCK 217 2 1194
CBLOCKEND 217 2 1203

;;}
CLINEA 0000H 0001H 04B3H 0001H 0001H
	rt
CBLOCKEND 217 1 1203
CFUNCTIONEND 217


	rseg $$Init_KMX061$main
CFUNCTION 218

_Init_KMX061	:
CBLOCK 218 1 1216

;;void Init_KMX061(){ 
CLINEA 0000H 0001H 04C0H 0001H 0014H
	push	lr
CBLOCK 218 2 1216
CRET 0000H

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04C1H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04C2H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &STBY_REG , 1,&STBY_REG_OFF_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04C3H 0002H 0072H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _STBY_REG_OFF_DATA
	mov	r1,	#BYTE2 OFFSET _STBY_REG_OFF_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _STBY_REG
	mov	r3,	#BYTE2 OFFSET _STBY_REG
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04C4H 0001H 0001H
	bal	_$L164

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04C4H 0002H 004EH
_$L130 :
CBLOCK 218 3 1220

;;		main_clrWDT();
CLINEA 0000H 0001H 04C5H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 3 1222

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04C4H 0001H 0001H
_$L164 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L130

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04C7H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04C8H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &SELF_TEST , 1,&SELF_TEST_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04C9H 0002H 0070H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _SELF_TEST_DATA
	mov	r1,	#BYTE2 OFFSET _SELF_TEST_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _SELF_TEST
	mov	r3,	#BYTE2 OFFSET _SELF_TEST
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04CAH 0001H 0001H
	bal	_$L165

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04CAH 0002H 004EH
_$L134 :
CBLOCK 218 4 1226

;;		main_clrWDT();
CLINEA 0000H 0001H 04CBH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 4 1228

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04CAH 0001H 0001H
_$L165 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L134

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04CDH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04CEH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &CNTL1 , 1,&CNTL1_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04CFH 0002H 0068H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _CNTL1_DATA
	mov	r1,	#BYTE2 OFFSET _CNTL1_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _CNTL1
	mov	r3,	#BYTE2 OFFSET _CNTL1
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D0H 0001H 0001H
	bal	_$L166

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D0H 0002H 004EH
_$L138 :
CBLOCK 218 5 1232

;;		main_clrWDT();
CLINEA 0000H 0001H 04D1H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 5 1234

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D0H 0001H 0001H
_$L166 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L138

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04D3H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04D4H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &CNTL2 , 1,&CNTL2_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04D5H 0002H 0068H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _CNTL2_DATA
	mov	r1,	#BYTE2 OFFSET _CNTL2_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _CNTL2
	mov	r3,	#BYTE2 OFFSET _CNTL2
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D6H 0001H 0001H
	bal	_$L167

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D6H 0002H 004EH
_$L142 :
CBLOCK 218 6 1238

;;		main_clrWDT();
CLINEA 0000H 0001H 04D7H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 6 1240

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04D6H 0001H 0001H
_$L167 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L142

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04D9H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04DAH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &ODCNTL , 1,&ODCNTL_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04DBH 0002H 006AH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _ODCNTL_DATA
	mov	r1,	#BYTE2 OFFSET _ODCNTL_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _ODCNTL
	mov	r3,	#BYTE2 OFFSET _ODCNTL
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04DCH 0001H 0001H
	bal	_$L168

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04DCH 0002H 004EH
_$L146 :
CBLOCK 218 7 1244

;;		main_clrWDT();
CLINEA 0000H 0001H 04DDH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 7 1246

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04DCH 0001H 0001H
_$L168 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L146

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04DFH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04E0H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &TEMP_EN_CNTL , 1,&TEMP_EN_CNTL_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04E1H 0002H 0076H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _TEMP_EN_CNTL_DATA
	mov	r1,	#BYTE2 OFFSET _TEMP_EN_CNTL_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _TEMP_EN_CNTL
	mov	r3,	#BYTE2 OFFSET _TEMP_EN_CNTL
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04E2H 0001H 0001H
	bal	_$L169

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04E2H 0002H 004EH
_$L150 :
CBLOCK 218 8 1250

;;		main_clrWDT();
CLINEA 0000H 0001H 04E3H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 8 1252

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04E2H 0001H 0001H
_$L169 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L150

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04E5H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04E6H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &BUF_CTRL1 , 1,&BUF_CTRL1_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04E7H 0002H 0070H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _BUF_CTRL1_DATA
	mov	r1,	#BYTE2 OFFSET _BUF_CTRL1_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _BUF_CTRL1
	mov	r3,	#BYTE2 OFFSET _BUF_CTRL1
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04E8H 0001H 0001H
	bal	_$L170

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04E8H 0002H 004EH
_$L154 :
CBLOCK 218 9 1256

;;		main_clrWDT();
CLINEA 0000H 0001H 04E9H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 9 1258

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04E8H 0001H 0001H
_$L170 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L154

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04EBH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04ECH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &BUF_CTRL2 , 1,&BUF_CTRL2_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04EDH 0002H 0070H
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _BUF_CTRL2_DATA
	mov	r1,	#BYTE2 OFFSET _BUF_CTRL2_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _BUF_CTRL2
	mov	r3,	#BYTE2 OFFSET _BUF_CTRL2
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04EEH 0001H 0001H
	bal	_$L171

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04EEH 0002H 004EH
_$L158 :
CBLOCK 218 10 1262

;;		main_clrWDT();
CLINEA 0000H 0001H 04EFH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 10 1264

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04EEH 0001H 0001H
_$L171 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L158

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 04F1H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 04F2H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &STBY_REG , 1,&STBY_REG_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 04F3H 0002H 006EH
	mov	r0,	#BYTE1 OFFSET __funcI2CFin
	mov	r1,	#BYTE2 OFFSET __funcI2CFin
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r0,	#BYTE1 OFFSET _STBY_REG_DATA
	mov	r1,	#BYTE2 OFFSET _STBY_REG_DATA
	push	er0
	mov	er0,	#1 
	push	er0
	mov	r2,	#BYTE1 OFFSET _STBY_REG
	mov	r3,	#BYTE2 OFFSET _STBY_REG
	l	r0,	NEAR _SAD_KMX61
	bl	_i2c_startSend
	add	sp,	#8 

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04F4H 0001H 0001H
	bal	_$L172

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04F4H 0002H 004EH
_$L162 :
CBLOCK 218 11 1268

;;		main_clrWDT();
CLINEA 0000H 0001H 04F5H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 218 11 1270

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 04F4H 0001H 0001H
_$L172 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L162
CBLOCKEND 218 2 1271

;;}
CLINEA 0000H 0001H 04F7H 0001H 0001H
	pop	pc
CBLOCKEND 218 1 1271
CFUNCTIONEND 218


	rseg $$Init_Temperature_Sensor_20$main
CFUNCTION 219

_Init_Temperature_Sensor_20	:
CBLOCK 219 1 1284

;;void Init_Temperature_Sensor_20(){
CLINEA 0000H 0001H 0504H 0001H 0022H
CBLOCK 219 2 1284
CBLOCKEND 219 2 1293

;;}
CLINEA 0000H 0001H 050DH 0001H 0001H
	rt
CBLOCKEND 219 1 1293
CFUNCTIONEND 219


	rseg $$Init_Temperature_Sensor_21$main
CFUNCTION 220

_Init_Temperature_Sensor_21	:
CBLOCK 220 1 1311

;;void Init_Temperature_Sensor_21(){
CLINEA 0000H 0001H 051FH 0001H 0022H
CBLOCK 220 2 1311
CBLOCKEND 220 2 1320

;;}
CLINEA 0000H 0001H 0528H 0001H 0001H
	rt
CBLOCKEND 220 1 1320
CFUNCTIONEND 220


	rseg $$Init_Temperature_Sensor_22$main
CFUNCTION 221

_Init_Temperature_Sensor_22	:
CBLOCK 221 1 1338

;;void Init_Temperature_Sensor_22(){
CLINEA 0000H 0001H 053AH 0001H 0022H
CBLOCK 221 2 1338
CBLOCKEND 221 2 1347

;;}
CLINEA 0000H 0001H 0543H 0001H 0001H
	rt
CBLOCKEND 221 1 1347
CFUNCTIONEND 221


	rseg $$Init_Temperature_Sensor_23$main
CFUNCTION 222

_Init_Temperature_Sensor_23	:
CBLOCK 222 1 1364

;;void Init_Temperature_Sensor_23(){
CLINEA 0000H 0001H 0554H 0001H 0022H
CBLOCK 222 2 1364
CBLOCKEND 222 2 1373

;;}
CLINEA 0000H 0001H 055DH 0001H 0001H
	rt
CBLOCKEND 222 1 1373
CFUNCTIONEND 222


	rseg $$main_clrWDT$main
CFUNCTION 179

_main_clrWDT	:
CBLOCK 179 1 1384

;;{
CLINEA 0000H 0001H 0568H 0001H 0001H
CBLOCK 179 2 1384

;;	do {
CLINEA 0000H 0001H 056BH 0002H 0005H
_$L180 :
CBLOCK 179 3 1387

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 056CH 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 179 3 1389

;;	} while (WDP != 1);
CLINEA 0000H 0000H 056DH 0002H 0014H
	tb	0f00eh.0
	beq	_$L180

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 056EH 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 179 2 1391

;;}
CLINEA 0000H 0001H 056FH 0001H 0001H
	rt
CBLOCKEND 179 1 1391
CFUNCTIONEND 179


	rseg $$_funcUartFin$main
CFUNCTION 186

__funcUartFin	:
CBLOCK 186 1 1402

;;{
CLINEA 0000H 0001H 057AH 0001H 0001H
	push	lr
CBLOCK 186 2 1402
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 057BH 0002H 0054H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 057CH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 057DH 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 186 2 1406

;;}
CLINEA 0000H 0001H 057EH 0001H 0001H
	pop	pc
CBLOCKEND 186 1 1406
CFUNCTIONEND 186


	rseg $$_funcI2CFin$main
CFUNCTION 187

__funcI2CFin	:
CBLOCK 187 1 1417

;;{
CLINEA 0000H 0001H 0589H 0001H 0001H
	push	lr
CBLOCK 187 2 1417
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 058AH 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 058BH 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 058CH 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 187 2 1421

;;}
CLINEA 0000H 0001H 058DH 0001H 0001H
	pop	pc
CBLOCKEND 187 1 1421
CFUNCTIONEND 187


	rseg $$_intI2c$main
CFUNCTION 190

__intI2c	:
CBLOCK 190 1 1431

;;{
CLINEA 0000H 0001H 0597H 0001H 0001H
	push	lr
CBLOCK 190 2 1431
CRET 0000H

;;	(void)i2c_continue();
CLINEA 0000H 0001H 0598H 0002H 0016H
	bl	_i2c_continue

;;	main_reqNotHalt();
CLINEA 0000H 0001H 0599H 0002H 0013H
	bl	_main_reqNotHalt
CBLOCKEND 190 2 1434

;;}
CLINEA 0000H 0001H 059AH 0001H 0001H
	pop	pc
CBLOCKEND 190 1 1434
CFUNCTIONEND 190


	rseg $$_intADC$main
CFUNCTION 191

__intADC	:
CBLOCK 191 1 1444

;;{
CLINEA 0000H 0001H 05A4H 0001H 0001H
CBLOCK 191 2 1444

;;	_flgADCFin = 1;
CLINEA 0000H 0001H 05A5H 0002H 0010H
	mov	r0,	#01h
	st	r0,	NEAR __flgADCFin
CBLOCKEND 191 2 1446

;;}
CLINEA 0000H 0001H 05A6H 0001H 0001H
	rt
CBLOCKEND 191 1 1446
CFUNCTIONEND 191


	rseg $$main_reqNotHalt$main
CFUNCTION 188

_main_reqNotHalt	:
CBLOCK 188 1 1456

;;{
CLINEA 0000H 0001H 05B0H 0001H 0001H
CBLOCK 188 2 1456

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 05B1H 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 188 2 1458

;;}
CLINEA 0000H 0001H 05B2H 0001H 0001H
	rt
CBLOCKEND 188 1 1458
CFUNCTIONEND 188


	rseg $$_intUart$main
CFUNCTION 189

__intUart	:
CBLOCK 189 1 1468

;;{
CLINEA 0000H 0001H 05BCH 0001H 0001H
CBLOCK 189 2 1468

;;	uart_continue(); 	//in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 05BDH 0002H 0047H
	b	_uart_continue
CBLOCKEND 189 2 1470
CLINEA 0000H 0001H 05BEH 0001H 0001H
CBLOCKEND 189 1 1470
CFUNCTIONEND 189


	rseg $$SetOSC$main
CFUNCTION 181

_SetOSC	:
CBLOCK 181 1 1475

;;static void SetOSC(void){
CLINEA 0000H 0001H 05C3H 0001H 0019H
CBLOCK 181 2 1475

;;	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 05C6H 0002H 004AH
	rb	0f002h.0

;;	SYSC1 = 0;
CLINEA 0000H 0001H 05C7H 0002H 000BH
	rb	0f002h.1

;;	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 05C9H 0002H 0034H
	sb	0f002h.3

;;	OSCM0 = 0;
CLINEA 0000H 0001H 05CAH 0002H 000BH
	rb	0f002h.2

;;	ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 05CCH 0002H 0031H
	sb	0f003h.1

;;	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 05CDH 0002H 0022H
	sb	0f003h.0

;;	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 05CFH 0002H 0045H
	sb	0f003h.7

;;	__EI();			//INT enable
CLINEA 0000H 0001H 05D1H 0002H 0017H
	ei
CBLOCKEND 181 2 1490

;;}
CLINEA 0000H 0001H 05D2H 0001H 0001H
	rt
CBLOCKEND 181 1 1490
CFUNCTIONEND 181


	rseg $$PortA_Low$main
CFUNCTION 182

_PortA_Low	:
CBLOCK 182 1 1496

;;void PortA_Low(void){
CLINEA 0000H 0001H 05D8H 0001H 0015H
CBLOCK 182 2 1496

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 05E2H 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 05E3H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 05E4H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 05E7H 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 05E8H 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 05E9H 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 05EAH 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 05EBH 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 05ECH 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 05EFH 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 05F0H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 05F1H 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 05F2H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 05F3H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 05F4H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 05F7H 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 05F8H 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 05F9H 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 05FBH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 182 2 1532
CLINEA 0000H 0001H 05FCH 0001H 0001H
CBLOCKEND 182 1 1532
CFUNCTIONEND 182


	rseg $$PortB_Low$main
CFUNCTION 183

_PortB_Low	:
CBLOCK 183 1 1538

;;void PortB_Low(void){
CLINEA 0000H 0001H 0602H 0001H 0015H
CBLOCK 183 2 1538

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 060CH 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 060DH 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 060EH 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 060FH 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 0610H 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 0611H 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0612H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0613H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0616H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0617H 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0618H 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 0619H 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 061AH 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 061BH 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 061CH 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 061DH 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 061EH 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 061FH 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0620H 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 0621H 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 0622H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 0623H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 0624H 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 0625H 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0628H 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 0629H 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 062AH 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 062BH 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 062CH 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 062DH 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 062EH 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 062FH 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0630H 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 0631H 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0632H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 0633H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0634H 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 0635H 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0636H 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 0637H 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 063AH 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 063BH 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 063CH 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 063DH 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 063EH 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 063FH 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 0640H 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 0641H 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0643H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 183 2 1604
CLINEA 0000H 0001H 0644H 0001H 0001H
CBLOCKEND 183 1 1604
CFUNCTIONEND 183


	rseg $$PortC_Low$main
CFUNCTION 184

_PortC_Low	:
CBLOCK 184 1 1610

;;void PortC_Low(void){
CLINEA 0000H 0001H 064AH 0001H 0015H
CBLOCK 184 2 1610

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 0654H 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 0655H 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 0656H 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 0657H 0002H 0031H
	rb	0f261h.3

;;	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
CLINEA 0000H 0001H 0658H 0002H 0031H
	rb	0f261h.4

;;	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
CLINEA 0000H 0001H 0659H 0002H 0031H
	rb	0f261h.5

;;	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
CLINEA 0000H 0001H 065AH 0002H 0031H
	rb	0f261h.6

;;	PC7DIR = 0;		// PortC Bit7 set to Output Mode...
CLINEA 0000H 0001H 065BH 0002H 0031H
	rb	0f261h.7

;;	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
CLINEA 0000H 0001H 065EH 0002H 003BH
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 065FH 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
CLINEA 0000H 0001H 0660H 0002H 003BH
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 0661H 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
CLINEA 0000H 0001H 0662H 0002H 003BH
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 0663H 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
CLINEA 0000H 0001H 0664H 0002H 003BH
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 0665H 0002H 000EH
	sb	0f262h.3

;;	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
CLINEA 0000H 0001H 0666H 0002H 003BH
	sb	0f263h.4

;;	PC4C0  = 1;	
CLINEA 0000H 0001H 0667H 0002H 000DH
	sb	0f262h.4

;;	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
CLINEA 0000H 0001H 0668H 0002H 003BH
	sb	0f263h.5

;;	PC5C0  = 1;	
CLINEA 0000H 0001H 0669H 0002H 000DH
	sb	0f262h.5

;;	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
CLINEA 0000H 0001H 066AH 0002H 003BH
	sb	0f263h.6

;;	PC6C0  = 1;	
CLINEA 0000H 0001H 066BH 0002H 000DH
	sb	0f262h.6

;;	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
CLINEA 0000H 0001H 066CH 0002H 003BH
	sb	0f263h.7

;;	PC7C0  = 1;	
CLINEA 0000H 0001H 066DH 0002H 000DH
	sb	0f262h.7

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0670H 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 0671H 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0672H 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 0673H 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0674H 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 0675H 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0676H 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 0677H 0002H 000EH
	rb	0f264h.3

;;	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0678H 0002H 003CH
	rb	0f265h.4

;;	PC4MD0  = 0;	
CLINEA 0000H 0001H 0679H 0002H 000EH
	rb	0f264h.4

;;	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 067AH 0002H 003CH
	rb	0f265h.5

;;	PC5MD0  = 0;
CLINEA 0000H 0001H 067BH 0002H 000DH
	rb	0f264h.5

;;	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 067CH 0002H 003CH
	rb	0f265h.6

;;	PC6MD0  = 0;	
CLINEA 0000H 0001H 067DH 0002H 000EH
	rb	0f264h.6

;;	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 067EH 0002H 003CH
	rb	0f265h.7

;;	PC7MD0  = 0;
CLINEA 0000H 0001H 067FH 0002H 000DH
	rb	0f264h.7

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 0682H 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 0683H 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 0684H 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 0685H 0002H 0021H
	rb	0f260h.3

;;	PC4D = 0;		// C.4 Output OFF....
CLINEA 0000H 0001H 0686H 0002H 0021H
	rb	0f260h.4

;;	PC5D = 0;		// C.5 Output OFF....
CLINEA 0000H 0001H 0687H 0002H 0021H
	rb	0f260h.5

;;	PC6D = 0;		// C.6 Output OFF....
CLINEA 0000H 0001H 0688H 0002H 0021H
	rb	0f260h.6

;;	PC7D = 0;		// C.7 Output OFF....
CLINEA 0000H 0001H 0689H 0002H 0021H
	rb	0f260h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 068BH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 184 2 1677
CLINEA 0000H 0001H 068DH 0001H 0001H
CBLOCKEND 184 1 1677
CFUNCTIONEND 184


	rseg $$PortD_Low$main
CFUNCTION 185

_PortD_Low	:
CBLOCK 185 1 1683

;;void PortD_Low(void){
CLINEA 0000H 0001H 0693H 0001H 0015H
CBLOCK 185 2 1683

;;	PD0DIR = 1;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 069CH 0002H 0031H
	sb	0f269h.0

;;	PD1DIR = 1;		// PortD Bit1 set to Output Mode...
CLINEA 0000H 0001H 069DH 0002H 0031H
	sb	0f269h.1

;;	PD2DIR = 1;		// PortD Bit2 set to Output Mode...
CLINEA 0000H 0001H 069EH 0002H 0031H
	sb	0f269h.2

;;	PD3DIR = 1;		// PortD Bit3 set to Output Mode...
CLINEA 0000H 0001H 069FH 0002H 0031H
	sb	0f269h.3

;;	PD4DIR = 1;		// PortD Bit4 set to Output Mode...
CLINEA 0000H 0001H 06A0H 0002H 0031H
	sb	0f269h.4

;;	PD5DIR = 1;		// PortD Bit5 set to Output Mode...
CLINEA 0000H 0001H 06A1H 0002H 0031H
	sb	0f269h.5

;;	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
CLINEA 0000H 0001H 06A4H 0002H 002FH
	sb	0f26bh.0

;;	PD0C0= 1;		
CLINEA 0000H 0001H 06A5H 0002H 000CH
	sb	0f26ah.0

;;	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
CLINEA 0000H 0001H 06A6H 0002H 002FH
	sb	0f26bh.1

;;	PD1C0= 1;	
CLINEA 0000H 0001H 06A7H 0002H 000BH
	sb	0f26ah.1

;;	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
CLINEA 0000H 0001H 06A8H 0002H 002FH
	sb	0f26bh.2

;;	PD2C0= 1;	
CLINEA 0000H 0001H 06A9H 0002H 000BH
	sb	0f26ah.2

;;	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
CLINEA 0000H 0001H 06AAH 0002H 002FH
	sb	0f26bh.3

;;	PD3C0= 1;		
CLINEA 0000H 0001H 06ABH 0002H 000CH
	sb	0f26ah.3

;;	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
CLINEA 0000H 0001H 06ACH 0002H 002FH
	sb	0f26bh.4

;;	PD4C0= 1;	
CLINEA 0000H 0001H 06ADH 0002H 000BH
	sb	0f26ah.4

;;	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
CLINEA 0000H 0001H 06AEH 0002H 002FH
	sb	0f26bh.5

;;	PD5C0= 1;	
CLINEA 0000H 0001H 06AFH 0002H 000BH
	sb	0f26ah.5

;;	PD0D = 0;		// D.0 Output OFF....
CLINEA 0000H 0001H 06B2H 0002H 0021H
	rb	0f268h.0

;;	PD1D = 0;		// D.1 Output OFF....
CLINEA 0000H 0001H 06B3H 0002H 0021H
	rb	0f268h.1

;;	PD2D = 0;		// D.2 Output OFF....
CLINEA 0000H 0001H 06B4H 0002H 0021H
	rb	0f268h.2

;;	PD3D = 0;		// D.3 Output OFF....
CLINEA 0000H 0001H 06B5H 0002H 0021H
	rb	0f268h.3

;;	PD4D = 0;		// D.4 Output OFF....
CLINEA 0000H 0001H 06B6H 0002H 0021H
	rb	0f268h.4

;;	PD5D = 0;		// D.5 Output OFF....
CLINEA 0000H 0001H 06B7H 0002H 0021H
	rb	0f268h.5

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 06B9H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 185 2 1722
CLINEA 0000H 0001H 06BAH 0001H 0001H
CBLOCKEND 185 1 1722
CFUNCTIONEND 185


	rseg $$NOPms$main
CFUNCTION 192

_NOPms	:
CBLOCK 192 1 1737

;;{
CLINEA 0000H 0001H 06C9H 0001H 0001H
	push	lr
	push	xr4
	push	bp
	push	er8
	mov	er8,	er0
CBLOCK 192 2 1737
CRET 0008H
CARGUMENT 46H 0002H 0028H "ms" 02H 00H 01H
CLOCAL 46H 0002H 002AH 0002H "timerThres" 02H 00H 01H
CLOCAL 46H 0001H 001AH 0002H "TimeFlag" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "TempSec" 02H 00H 01H
CLOCAL 46H 0002H 0024H 0002H "timer" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "timertest" 02H 00H 01H

;;	TempSec = ms;
CLINEA 0000H 0001H 06D0H 0002H 000EH
	mov	er4,	er0

;;	TimeFlag = 0;
CLINEA 0000H 0001H 06D1H 0002H 000EH
	mov	r6,	#00h

;;	tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 06D3H 0002H 0016H
	mov	r0,	#01h
	bl	_tm_init

;;	tm_setABSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 018DH 0002H 0015H
	sb	0f8eah.0

;;	tm_setABSource(TM_CS_HTBCLK);
CLINEA 0000H 0000H 018EH 0002H 001AH
	rb	0f8eah.1

;;	tm_setABData(0xffff);
CLINEA 0000H 0000H 0157H 0002H 0025H
	mov	r0,	#0ffh
	st	r0,	0f8e8h

;;	tm_setABData(0xffff);
CLINEA 0000H 0000H 0158H 0002H 0023H
	st	r0,	0f8ech

;;	if(ms < 128){
CLINEA 0000H 0001H 06D7H 0002H 000EH
	mov	er0,	er8
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bge	_$L194
CBLOCK 192 3 1751

;;		timerThres = 0x1FF * ms;
CLINEA 0000H 0001H 06D8H 0003H 001AH
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r8
	subc	r1,	r9
	mov	bp,	er0

;;		TimeFlag = 0;
CLINEA 0000H 0001H 06D9H 0003H 000FH
CBLOCKEND 192 3 1754

;;	}
CLINEA 0000H 0000H 06DAH 0002H 0002H
_$L194 :

;;	if(ms == 128){
CLINEA 0000H 0001H 06DBH 0002H 000FH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bne	_$L196
CBLOCK 192 4 1755

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 06DCH 0003H 0016H
	mov	bp,	#-1

;;		TimeFlag = 0;
CLINEA 0000H 0001H 06DDH 0003H 000FH
	mov	r6,	#00h
CBLOCKEND 192 4 1758

;;	}
CLINEA 0000H 0000H 06DEH 0002H 0002H
_$L196 :

;;	if(ms > 128){
CLINEA 0000H 0001H 06DFH 0002H 000EH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	ble	_$L206
CBLOCK 192 5 1759

;;		while(TempSec > 128){
CLINEA 0000H 0000H 06E0H 0001H 0001H
	bal	_$L216

;;		while(TempSec > 128){
CLINEA 0000H 0000H 06E0H 0003H 0017H
_$L202 :
CBLOCK 192 6 1760

;;			TempSec -= 128;
CLINEA 0000H 0001H 06E1H 0004H 0012H
	add	r0,	#080h
	addc	r1,	#0ffh
	mov	er4,	er0

;;			TimeFlag++;
CLINEA 0000H 0000H 06E2H 0004H 000EH
	add	r6,	#01h
CBLOCKEND 192 6 1763

;;		while(TempSec > 128){
CLINEA 0000H 0000H 06E0H 0001H 0001H
_$L216 :
	mov	er0,	er4
	cmp	r4,	#080h
	cmpc	r5,	#00h
	bgt	_$L202

;;		if(TempSec != 0){
CLINEA 0000H 0001H 06E4H 0003H 0013H
	mov	er4,	er4
	beq	_$L204
CBLOCK 192 7 1764

;;			timerThres = 0x1FF * TempSec;
CLINEA 0000H 0001H 06E5H 0004H 0020H
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r4
	subc	r1,	r5
	mov	bp,	er0
CBLOCKEND 192 7 1766

;;		else{
CLINEA 0000H 0001H 06E7H 0003H 0007H
	bal	_$L206
_$L204 :
CBLOCK 192 8 1767

;;			timerThres = 0xFFFF;
CLINEA 0000H 0001H 06E8H 0004H 0017H
	mov	bp,	#-1

;;			TimeFlag--;
CLINEA 0000H 0000H 06E9H 0004H 000EH
	add	r6,	#0ffh
CBLOCKEND 192 8 1770

;;		}
CLINEA 0000H 0000H 06EAH 0003H 0003H
_$L206 :
CBLOCKEND 192 5 1771

;;	main_clrWDT();	
CLINEA 0000H 0001H 06EEH 0002H 0010H
	bl	_main_clrWDT

;;	tm_startAB();
CLINEA 0000H 0001H 00D1H 0002H 000AH
	mov	r0,	#00h
	st	r0,	0f8e9h

;;	tm_startAB();
CLINEA 0000H 0000H 00D2H 0002H 000BH
	sb	0f8ebh.0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0120H 0002H 001BH
	l	r0,	0f8e9h
	mov	r1,	#00h
	mov	er2,	er0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0121H 0002H 0014H
	l	r0,	0f8edh
	or	r3,	r0

;;	timer = tm_getABCounter();
CLINEA 0000H 0000H 0122H 0002H 000CH
	mov	er0,	er2

;;	while(timer < timerThres){
CLINEA 0000H 0001H 06F2H 0002H 001BH
	bal	_$L209
_$L211 :
CBLOCK 192 9 1778

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0120H 0002H 001BH
	l	r0,	0f8e9h
	mov	r1,	#00h
	mov	er2,	er0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0121H 0002H 0014H
	l	r0,	0f8edh
	or	r3,	r0

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 0122H 0002H 000CH
	mov	er0,	er2

;;		timer = tm_getABCounter();
CLINEA 0000H 0000H 06F3H 0003H 001CH
CBLOCKEND 192 9 1781

;;	}
CLINEA 0000H 0000H 06F5H 0002H 0002H
_$L209 :

;;	while(timer < timerThres){
CLINEA 0000H 0000H 06F2H 0000H 0000H
	cmp	er0,	bp
	blt	_$L211

;;	if(TimeFlag !=0){
CLINEA 0000H 0001H 06F6H 0002H 0012H
	cmp	r6,	#00h
	beq	_$L214

;;		tm_stopAB();
CLINEA 0000H 0001H 0105H 0002H 000BH
	rb	0f8ebh.0

;;		TimeFlag--;
CLINEA 0000H 0000H 06F8H 0003H 000DH
	add	r6,	#0ffh

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 06F9H 0003H 0016H
	mov	bp,	#-1

;;		goto TimerRestart;
CLINEA 0000H 0001H 06FAH 0003H 0014H
	bal	_$L206

;;	}
CLINEA 0000H 0000H 06FBH 0002H 0002H
_$L214 :
CBLOCKEND 192 2 1788

;;}
CLINEA 0000H 0001H 06FCH 0001H 0001H
	pop	er8
	pop	bp
	pop	xr4
	pop	pc
CBLOCKEND 192 1 1788
CFUNCTIONEND 192

	public _Init_Hall_Effect_Sensors_0
	public _Init_Hall_Effect_Sensors_1
	public _MainOp_Hall_Effect_Sensors_0
	public _MainOp_Hall_Effect_Sensors_1
	public _NOPms
	public _MainOp_Temperature_Sensor_20
	public _MainOp_Temperature_Sensor_21
	public _MainOp_Temperature_Sensor_22
	public _MainOp_Temperature_Sensor_23
	public _main_clrWDT
	public _main_reqNotHalt
	public _MainOp_UV_Sensor_10
	public _DeviceSelection
	public _Init_KX022
	public _Init_Temperature_Sensor_20
	public _Init_Temperature_Sensor_21
	public _Init_Temperature_Sensor_22
	public _main
	public _Init_Temperature_Sensor_23
	public _Init_UV_Sensor_10
	public _SensorInitialization
	public _PortD_Low
	public _MainOp_KMX061
	public _PortC_Low
	public _PortB_Low
	public _Init_KMX061
	public _testPrint
	public _MainOp_KX022
	public _Init_Ambient_Light_Sensor_5
	public _Init_Ambient_Light_Sensor_6
	public _Init_Ambient_Light_Sensor_7
	public _Init_Ambient_Light_Sensor_8
	public _Init_Ambient_Light_Sensor_9
	public _PortA_Low
	public _MainOp_Ambient_Light_Sensor_8
	public _MainOp_Ambient_Light_Sensor_9
	public _MainOp_Ambient_Light_Sensor_5
	public _MainOp_Ambient_Light_Sensor_6
	public _MainOp_Ambient_Light_Sensor_7
	__flgUartFin comm data 01h #00h
	_testI2C comm data 02h #00h
	_ret comm data 02h #00h
	_KMX61_VALUE comm data 02h #00h
	__flgI2CFin comm data 01h #00h
	__reqNotHalt comm data 01h #00h
	__flgADCFin comm data 01h #00h
	extrn code near : _irq_init
	extrn code near : _uart_PortSet
	extrn code near : _i2c_stop
	extrn code near : _i2c_startReceive
	extrn code near : _uart_init
	extrn code near : _i2c_continue
	extrn code near : _irq_di
	extrn code near : _irq_ei
	extrn code near : _irq_setHdr
	extrn code near : _sprintf_nn
	extrn code near : _uart_stop
	extrn code near : _uart_startSend
	extrn code near : _i2c_startSend
	extrn code near : _uart_continue
	extrn code near : _i2c_init
	extrn code near : _tm_init
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

	rseg $$NTABSensorInitialization$main
_$M4 :
	dw	_$S42
	dw	_$S43
	dw	_$L40
	dw	_$L40
	dw	_$L40
	dw	_$S44
	dw	_$S45
	dw	_$S46
	dw	_$S47
	dw	_$S48
	dw	_$S49
	dw	_$L40
	dw	_$L40
	dw	_$L40
	dw	_$L40
	dw	_$S50
	dw	_$S51
	dw	_$L40
	dw	_$L40
	dw	_$L40
	dw	_$S52
	dw	_$S53
	dw	_$S54
	dw	_$S55

	rseg $$NINITTAB
	db	023h
	db	010h
	db	01h
	db	0eh
	db	029h
	db	060h
	db	02ah
	db	02bh
	db	02ch
	db	04ch
	db	078h
	db	079h
	db	00h
	db	03h
	db	00h
	db	013h
	db	00h
	db	00h
	db	01h
	db	00h
	db	00h
	db	0ah
	db	0bh
	db	0ch
	db	0dh
	db	0eh
	db	0fh
	db	012h
	db	013h
	db	014h
	db	015h
	db	016h
	db	017h
	db	010h
	db	011h
	DB	"UV Sensor Demo", 00H
	dw	00h
	db	01h

	rseg $$TAB_uartSetParam$main
__uartSetParam :
	dw	02580h
	dw	00h
	db	00h
	db	02h
	db	00h
	db	00h
	db	00h
	align

	rseg $$TAB$$S57$main
$$S57 :
	DB	"Selected %d\x0d", 00H

	rseg $$TAB$$S73$main
$$S73 :
	DB	"ALSRaw = %u \x0d", 00H

	rseg $$TAB$$S96$main
$$S96 :
	DB	"ax( %d )\x0d", 00H

	rseg $$NINITVAR
_ALS8_DevAddress :
	ds	01h
_ALS8_AutoResolution :
	ds	01h
_ALS8_PowerOn :
	ds	01h
_SAD_KMX61 :
	ds	01h
_STBY_REG :
	ds	01h
_SELF_TEST :
	ds	01h
_CNTL1 :
	ds	01h
_CNTL2 :
	ds	01h
_ODCNTL :
	ds	01h
_TEMP_EN_CNTL :
	ds	01h
_BUF_CTRL1 :
	ds	01h
_BUF_CTRL2 :
	ds	01h
_STBY_REG_DATA :
	ds	01h
_STBY_REG_OFF_DATA :
	ds	01h
_SELF_TEST_DATA :
	ds	01h
_CNTL1_DATA :
	ds	01h
_CNTL2_DATA :
	ds	01h
_ODCNTL_DATA :
	ds	01h
_TEMP_EN_CNTL_DATA :
	ds	01h
_BUF_CTRL1_DATA :
	ds	01h
_BUF_CTRL2_DATA :
	ds	01h
_KMX61_AXL :
	ds	01h
_KMX61_AXH :
	ds	01h
_KMX61_AYL :
	ds	01h
_KMX61_AYH :
	ds	01h
_KMX61_AZL :
	ds	01h
_KMX61_AZH :
	ds	01h
_KMX61_MXL :
	ds	01h
_KMX61_MXH :
	ds	01h
_KMX61_MYL :
	ds	01h
_KMX61_MYH :
	ds	01h
_KMX61_MZL :
	ds	01h
_KMX61_MZH :
	ds	01h
_KMX61_TL :
	ds	01h
_KMX61_TH :
	ds	01h
_HelloWorld :
	ds	011h
_SensorIntializationFlag :
	ds	01h

	rseg $$NVARmain
_i :
	ds	02h
_j :
	ds	02h
_tmp :
	ds	02h
_PrintContent :
	ds	032h
_SensorPlatformSelection :
	ds	01h
	align
_tempVal :
	ds	02h
_SensorOutput :
	ds	02h
_tmp1 :
	ds	02h
_ALS8_SensorReturn :
	ds	02h
_SensorPlatformSelection_Temp :
	ds	01h

	rseg $$NINITTAB
	align

	rseg $$NINITVAR
	align

	end
