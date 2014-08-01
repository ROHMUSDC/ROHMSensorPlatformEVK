;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610112) 
	model small, near
	$$NVARmain segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$NTABmain segment table 2h #0h
	$$Ambient_Light_Sensor_5$main segment code 2h #0h
	$$Ambient_Light_Sensor_6$main segment code 2h #0h
	$$Ambient_Light_Sensor_7$main segment code 2h #0h
	$$Ambient_Light_Sensor_8$main segment code 2h #0h
	$$Ambient_Light_Sensor_9$main segment code 2h #0h
	$$Configure_KMX61$main segment code 2h #0h
	$$DeviceSelection$main segment code 2h #0h
	$$Hall_Effect_Sensors_0$main segment code 2h #0h
	$$Hall_Effect_Sensors_1$main segment code 2h #0h
	$$Initialization$main segment code 2h #0h
	$$KMX061$main segment code 2h #0h
	$$KX022$main segment code 2h #0h
	$$NOPms$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$PortD_Low$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$TAB$$S56$main segment table 2h #0h
	$$TAB$$S84$main segment table 2h #0h
	$$TAB_uartSetParam$main segment table 2h #0h
	$$Temperature_Sensor_20$main segment code 2h #0h
	$$Temperature_Sensor_21$main segment code 2h #0h
	$$Temperature_Sensor_22$main segment code 2h #0h
	$$Temperature_Sensor_23$main segment code 2h #0h
	$$UV_Sensor_10$main segment code 2h #0h
	$$_funcI2CFin$main segment code 2h #0h
	$$_funcUartFin$main segment code 2h #0h
	$$_intADC$main segment code 2h #0h
	$$_intI2c$main segment code 2h #0h
	$$_intUart$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	$$main_reqNotHalt$main segment code 2h #0h
	$$testPrint$main segment code 2h #0h
	$$NTABmain$main segment table 2h #0h
	STACKSEG 0100h
CVERSION 3.41.8
CGLOBAL 01H 03H 0000H "NOPms" 08H 02H 0C0H 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 0B3H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 0BAH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 0BCH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "DeviceSelection" 08H 02H 0C1H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Configure_KMX61" 08H 02H 0D0H 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "KMX061" 08H 02H 0CBH 00H 81H 0cH 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 0B4H 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Temperature_Sensor_20" 08H 02H 0CCH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Temperature_Sensor_21" 08H 02H 0CDH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Temperature_Sensor_22" 08H 02H 0CEH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Temperature_Sensor_23" 08H 02H 0CFH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 0D2H 00H 80H 00H 00H 00H 01H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 0BDH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortD_Low" 08H 02H 0B9H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 0BEH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 0B5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 0B8H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intADC" 08H 02H 0BFH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "KX022" 08H 02H 0CAH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "UV_Sensor_10" 08H 02H 0C9H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 0B7H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Ambient_Light_Sensor_8" 08H 02H 0C7H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Ambient_Light_Sensor_9" 08H 02H 0C8H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Ambient_Light_Sensor_5" 08H 02H 0C4H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Ambient_Light_Sensor_6" 08H 02H 0C5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Ambient_Light_Sensor_7" 08H 02H 0C6H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "testPrint" 08H 02H 0D1H 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 0B6H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 0BBH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Hall_Effect_Sensors_0" 08H 02H 0C2H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "Hall_Effect_Sensors_1" 08H 02H 0C3H 00H 80H 00H 00H 00H 07H
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
CSGLOBAL 42H 0032H "SensorReturn" 05H 01H 32H 00H 00H 00H
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
CSGLOBAL 42H 0010H "UV_DETECTED" 05H 01H 10H 00H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AXL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AYH" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AXH" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AZL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AYL" 02H 00H 00H
CSGLOBAL 42H 0001H "KMX61_AZH" 02H 00H 00H
CSGLOBAL 43H 0004H "UVIndex" 02H 00H 03H
CSGLOBAL 42H 0002H "UVReturn" 02H 00H 01H
CSGLOBAL 43H 0002H "tempVal" 02H 00H 01H
CSGLOBAL 42H 0001H "CNTL2_DATA" 02H 00H 00H
CSGLOBAL 42H 0002H "SensorOutput" 02H 00H 01H
CSGLOBAL 42H 0001H "CNTL1" 02H 00H 00H
CSGLOBAL 42H 0001H "CNTL2" 02H 00H 00H
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
CSGLOBAL 42H 0002H "Test" 02H 00H 01H
CSGLOBAL 43H 0002H "tmp1" 02H 00H 01H
CSGLOBAL 42H 0002H "UV_Offset" 02H 00H 01H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
CSGLOBAL 42H 0001H "ODCNTL" 02H 00H 00H
CSGLOBAL 42H 0001H "TEMP_EN_CNTL" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_flgADCFin" 02H 00H 00H
CSGLOBAL 42H 0002H "ScaledUVReturn" 02H 00H 01H
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
CFILE 0000H 0000055EH "main\\main.c"

	rseg $$main$main
CFUNCTION 210

_main	:
CBLOCK 210 1 289

;;{ 
CLINEA 0000H 0001H 0121H 0001H 0002H
CBLOCK 210 2 289

;;	Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 0122H 0002H 0047H
	bl	_Initialization

;;	Configure_KMX61();
CLINEA 0000H 0001H 0123H 0002H 0013H
	bl	_Configure_KMX61

;;	while(1){
CLINEA 0000H 0001H 0125H 0002H 000AH
	bal	_$L39
_$L34 :
CBLOCK 210 3 293

;;		DeviceSelection(); // SensorPlatformSelection holds 8-bits of sensor type
CLINEA 0000H 0001H 0126H 0003H 004BH
	bl	_DeviceSelection

;;		main_clrWDT();
CLINEA 0000H 0001H 0127H 0003H 0010H
	bl	_main_clrWDT

;;		switch(SensorPlatformSelection){
CLINEA 0000H 0001H 0128H 0003H 0022H
	l	r0,	NEAR _SensorPlatformSelection
	mov	r1,	#00h
CBLOCK 210 4 296
	cmp	r0,	#017h
	cmpc	r1,	#00h
	bgt	_$L34
	sllc	r1,	#01h
	sll	r0,	#01h
	l	er0,	NEAR _$M1[er0]
	b	er0

;;		} 	 
_$L39 :
CBLOCKEND 210 3 354

;;	while(1){
CLINEA 0000H 0000H 0125H 0000H 0000H
	bal	_$L34
CBLOCKEND 210 2 355

;;			case 0:
CLINEA 0000H 0001H 0129H 0004H 000AH
_$S41 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 012AH 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Hall_Effect_Sensors_0(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 012BH 0005H 0052H
	bl	_Hall_Effect_Sensors_0

;;				break;
CLINEA 0000H 0001H 012CH 0005H 000AH
	bal	_$L39

;;			case 1:
CLINEA 0000H 0001H 012DH 0004H 000AH
_$S42 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 012EH 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Hall_Effect_Sensors_1(); // Refer to function description for list of sensors
CLINEA 0000H 0001H 012FH 0005H 0051H
	bl	_Hall_Effect_Sensors_1

;;				break;
CLINEA 0000H 0001H 0130H 0005H 000AH
	bal	_$L39

;;			case 5: 
CLINEA 0000H 0001H 0131H 0004H 000BH
_$S43 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 0132H 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Ambient_Light_Sensor_5(); // Refer to function description for list of sensors
CLINEA 0000H 0001H 0133H 0005H 0052H
	bl	_Ambient_Light_Sensor_5

;;				break;
CLINEA 0000H 0001H 0134H 0005H 000AH
	bal	_$L39

;;			case 6:
CLINEA 0000H 0001H 0135H 0004H 000AH
_$S44 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 0136H 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Ambient_Light_Sensor_6(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0137H 0005H 0053H
	bl	_Ambient_Light_Sensor_6

;;				break;
CLINEA 0000H 0001H 0138H 0005H 000AH
	bal	_$L39

;;			case 7:
CLINEA 0000H 0001H 0139H 0004H 000AH
_$S45 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 013AH 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Ambient_Light_Sensor_7(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 013BH 0005H 0053H
	bl	_Ambient_Light_Sensor_7

;;				break;
CLINEA 0000H 0001H 013CH 0005H 000AH
	bal	_$L39

;;			case 8:
CLINEA 0000H 0001H 013DH 0004H 000AH
_$S46 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 013EH 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Ambient_Light_Sensor_8(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 013FH 0005H 0053H
	bl	_Ambient_Light_Sensor_8

;;				break;
CLINEA 0000H 0001H 0140H 0005H 000AH
	bal	_$L39

;;			case 9:
CLINEA 0000H 0001H 0141H 0004H 000AH
_$S47 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 0142H 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Ambient_Light_Sensor_9(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0143H 0005H 0053H
	bl	_Ambient_Light_Sensor_9

;;				break;
CLINEA 0000H 0001H 0144H 0005H 000AH
	bal	_$L39

;;			case 10:
CLINEA 0000H 0001H 0145H 0004H 000BH
_$S48 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 0146H 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				UV_Sensor_10(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0147H 0005H 0049H
	bl	_UV_Sensor_10

;;				break;
CLINEA 0000H 0001H 0148H 0005H 000AH
	bal	_$L39

;;			case 15:
CLINEA 0000H 0001H 0149H 0004H 000BH
_$S49 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 014AH 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				KX022(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 014BH 0005H 0042H
	bl	_KX022

;;				break;
CLINEA 0000H 0001H 014CH 0005H 000AH
	bal	_$L39

;;			case 16:
CLINEA 0000H 0001H 014DH 0004H 000BH
_$S50 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 014EH 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				KMX061(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 014FH 0005H 0043H
	bl	_KMX061

;;				break;
CLINEA 0000H 0001H 0150H 0005H 000AH
	b	_$L39

;;			case 20:
CLINEA 0000H 0001H 0151H 0004H 000BH
_$S51 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 0152H 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Temperature_Sensor_20(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 0153H 0005H 0052H
	bl	_Temperature_Sensor_20

;;				break;
CLINEA 0000H 0001H 0154H 0005H 000AH
	b	_$L39

;;			case 21:
CLINEA 0000H 0001H 0155H 0004H 000BH
_$S52 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 0156H 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Temperature_Sensor_21(); // Refer to function description for list of sensors
CLINEA 0000H 0001H 0157H 0005H 0051H
	bl	_Temperature_Sensor_21

;;				break;
CLINEA 0000H 0001H 0158H 0005H 000AH
	b	_$L39

;;			case 22:
CLINEA 0000H 0001H 0159H 0004H 000BH
_$S53 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 015AH 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Temperature_Sensor_22(); // Refer to function description for list of sensors 
CLINEA 0000H 0001H 015BH 0005H 0052H
	bl	_Temperature_Sensor_22

;;				break;
CLINEA 0000H 0001H 015CH 0005H 000AH
	b	_$L39

;;			case 23:
CLINEA 0000H 0001H 015DH 0004H 000BH
_$S54 :

;;				testPrint(&SensorPlatformSelection);
CLINEA 0000H 0001H 015EH 0005H 0028H
	mov	r0,	#BYTE1 OFFSET _SensorPlatformSelection
	mov	r1,	#BYTE2 OFFSET _SensorPlatformSelection
	bl	_testPrint

;;				Temperature_Sensor_23(); // Refer to function description for list of sensors
CLINEA 0000H 0001H 015FH 0005H 0051H
	bl	_Temperature_Sensor_23

;;				break; 
CLINEA 0000H 0001H 0160H 0005H 000BH
	b	_$L39
CBLOCKEND 210 4 353
CBLOCKEND 210 1 355
CFUNCTIONEND 210


	rseg $$testPrint$main
CFUNCTION 209

_testPrint	:
CBLOCK 209 1 357

;;{
CLINEA 0000H 0001H 0165H 0001H 0001H
	push	lr
	push	er4
CBLOCK 209 2 357
CRET 0002H
CARGUMENT 47H 0002H 0024H "CS" 04H 03H 00H 00H 00H
CLOCAL 47H 0002H 0026H 0002H "c" 02H 00H 01H

;;		int c = sprintf(PrintContent, "Selected %d\r", *CS);  
CLINEA 0000H 0001H 0166H 0003H 0038H
	l	r0,	[er0]
	extbw	er0
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S56
	mov	r1,	#BYTE2 OFFSET $$S56
	push	er0
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	push	er0
	bl	_sprintf_nn
	add	sp,	#6 
	mov	er4,	er0

;;		_flgUartFin = 0; 
CLINEA 0000H 0001H 0168H 0003H 0013H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0169H 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(PrintContent, c, _funcUartFin);  
CLINEA 0000H 0001H 016AH 0003H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	er4
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 016BH 0001H 0001H
	bal	_$L61

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 016BH 0003H 001AH
_$L59 :
CBLOCK 209 3 363

;;			main_clrWDT();
CLINEA 0000H 0001H 016CH 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 209 3 365

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 016BH 0001H 0001H
_$L61 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L59
CBLOCKEND 209 2 366

;;}
CLINEA 0000H 0001H 016EH 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 209 1 366
CFUNCTIONEND 209


	rseg $$Hall_Effect_Sensors_0$main
CFUNCTION 194

_Hall_Effect_Sensors_0	:
CBLOCK 194 1 392

;;void Hall_Effect_Sensors_0(){
CLINEA 0000H 0001H 0188H 0001H 001DH
CBLOCK 194 2 392
CBLOCKEND 194 2 401

;;}
CLINEA 0000H 0001H 0191H 0001H 0001H
	rt
CBLOCKEND 194 1 401
CFUNCTIONEND 194


	rseg $$Hall_Effect_Sensors_1$main
CFUNCTION 195

_Hall_Effect_Sensors_1	:
CBLOCK 195 1 416

;;void Hall_Effect_Sensors_1(){
CLINEA 0000H 0001H 01A0H 0001H 001DH
CBLOCK 195 2 416
CBLOCKEND 195 2 425

;;}
CLINEA 0000H 0001H 01A9H 0001H 0001H
	rt
CBLOCKEND 195 1 425
CFUNCTIONEND 195


	rseg $$Ambient_Light_Sensor_5$main
CFUNCTION 196

_Ambient_Light_Sensor_5	:
CBLOCK 196 1 443

;;void Ambient_Light_Sensor_5(){
CLINEA 0000H 0001H 01BBH 0001H 001EH
CBLOCK 196 2 443
CBLOCKEND 196 2 452

;;}
CLINEA 0000H 0001H 01C4H 0001H 0001H
	rt
CBLOCKEND 196 1 452
CFUNCTIONEND 196


	rseg $$Ambient_Light_Sensor_6$main
CFUNCTION 197

_Ambient_Light_Sensor_6	:
CBLOCK 197 1 467

;;void Ambient_Light_Sensor_6(){
CLINEA 0000H 0001H 01D3H 0001H 001EH
CBLOCK 197 2 467
CBLOCKEND 197 2 476

;;}
CLINEA 0000H 0001H 01DCH 0001H 0001H
	rt
CBLOCKEND 197 1 476
CFUNCTIONEND 197


	rseg $$Ambient_Light_Sensor_7$main
CFUNCTION 198

_Ambient_Light_Sensor_7	:
CBLOCK 198 1 489

;;void Ambient_Light_Sensor_7(){
CLINEA 0000H 0001H 01E9H 0001H 001EH
CBLOCK 198 2 489
CBLOCKEND 198 2 498

;;}
CLINEA 0000H 0001H 01F2H 0001H 0001H
	rt
CBLOCKEND 198 1 498
CFUNCTIONEND 198


	rseg $$Ambient_Light_Sensor_8$main
CFUNCTION 199

_Ambient_Light_Sensor_8	:
CBLOCK 199 1 511

;;void Ambient_Light_Sensor_8(){
CLINEA 0000H 0001H 01FFH 0001H 001EH
CBLOCK 199 2 511
CBLOCKEND 199 2 520

;;}
CLINEA 0000H 0001H 0208H 0001H 0001H
	rt
CBLOCKEND 199 1 520
CFUNCTIONEND 199


	rseg $$Ambient_Light_Sensor_9$main
CFUNCTION 200

_Ambient_Light_Sensor_9	:
CBLOCK 200 1 533

;;void Ambient_Light_Sensor_9(){
CLINEA 0000H 0001H 0215H 0001H 001EH
CBLOCK 200 2 533
CBLOCKEND 200 2 542

;;}
CLINEA 0000H 0001H 021EH 0001H 0001H
	rt
CBLOCKEND 200 1 542
CFUNCTIONEND 200


	rseg $$UV_Sensor_10$main
CFUNCTION 201

_UV_Sensor_10	:
CBLOCK 201 1 555

;;void UV_Sensor_10(){
CLINEA 0000H 0001H 022BH 0001H 0014H
CBLOCK 201 2 555
CBLOCKEND 201 2 564

;;}
CLINEA 0000H 0001H 0234H 0001H 0001H
	rt
CBLOCKEND 201 1 564
CFUNCTIONEND 201


	rseg $$KX022$main
CFUNCTION 202

_KX022	:
CBLOCK 202 1 577

;;void KX022(){
CLINEA 0000H 0001H 0241H 0001H 000DH
CBLOCK 202 2 577
CBLOCKEND 202 2 586

;;}
CLINEA 0000H 0001H 024AH 0001H 0001H
	rt
CBLOCKEND 202 1 586
CFUNCTIONEND 202


	rseg $$KMX061$main
CFUNCTION 203

_KMX061	:
CBLOCK 203 1 599

;;void KMX061(){ 
CLINEA 0000H 0001H 0257H 0001H 000FH
	push	lr
	push	er4
CBLOCK 203 2 599
CRET 0002H
CLOCAL 4BH 0001H 0000H 0002H "Flag" 02H 00H 00H
CLOCAL 47H 0002H 0026H 0002H "c" 02H 00H 01H

;;	        while(PC7D)
CLINEA 0000H 0001H 025BH 000AH 0014H
	b	_$L86
_$L74 :
CBLOCK 203 3 604

;;				main_clrWDT(); 
CLINEA 0000H 0001H 025DH 0005H 0013H
	bl	_main_clrWDT

;;				_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0261H 0005H 003EH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;				i2c_stop();																		//Make sure I2C is not currently running
CLINEA 0000H 0001H 0262H 0005H 0049H
	bl	_i2c_stop

;;				I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 0263H 0005H 0038H
	rb	0f2a4h.1

;;				i2c_startReceive(SAD_KMX61, &KMX61_AXL, 1, &KMX61_VALUE, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 0264H 0005H 0071H
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
CLINEA 0000H 0000H 0265H 0001H 0001H
	bal	_$L89

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0265H 0005H 0054H
_$L78 :
CBLOCK 203 4 613

;;					main_clrWDT();
CLINEA 0000H 0001H 0266H 0006H 0013H
	bl	_main_clrWDT
CBLOCKEND 203 4 615

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 0265H 0001H 0001H
_$L89 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L78

;;				tmp = (KMX61_VALUE[0]);
CLINEA 0000H 0001H 0268H 0005H 001BH
	l	r0,	NEAR _KMX61_VALUE
	mov	r1,	#00h
	st	er0,	NEAR _tmp

;;				_flgI2CFin = 0;																	//reset I2C completed Flag
CLINEA 0000H 0001H 0269H 0005H 003EH
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;				i2c_stop();				 													//Make sure I2C is not currently running
CLINEA 0000H 0001H 026AH 0005H 0049H
	bl	_i2c_stop

;;				I20MD = 0;		//Switch to I2C Fast Operation (400kbps)
CLINEA 0000H 0001H 026BH 0005H 0038H
	rb	0f2a4h.1

;;				i2c_startReceive(SAD_KMX61, &KMX61_AXH, 1, &KMX61_VALUE, 1, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
CLINEA 0000H 0001H 026CH 0005H 0071H
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
CLINEA 0000H 0000H 026DH 0001H 0001H
	bal	_$L90

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 026DH 0005H 0054H
_$L82 :
CBLOCK 203 5 621

;;					main_clrWDT();
CLINEA 0000H 0001H 026EH 0006H 0013H
	bl	_main_clrWDT
CBLOCKEND 203 5 623

;;				while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 026DH 0001H 0001H
_$L90 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L82

;;				tmp1 = (KMX61_VALUE[0])<<8; 
CLINEA 0000H 0001H 0270H 0005H 0020H
	l	r0,	NEAR _KMX61_VALUE
	mov	r1,	r0
	mov	r0,	#00h
	st	er0,	NEAR _tmp1

;;				tempVal = (tmp|tmp1)>>2;
CLINEA 0000H 0001H 0271H 0005H 001CH
	l	er2,	NEAR _tmp
	or	r0,	r2
	or	r1,	r3
	srlc	r0,	#02h
	sra	r1,	#02h
	st	er0,	NEAR _tempVal

;;				c = sprintf(PrintContent, "ax( %d )\r", tempVal);  
CLINEA 0000H 0000H 0273H 0005H 0037H
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S84
	mov	r1,	#BYTE2 OFFSET $$S84
	push	er0
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	push	er0
	bl	_sprintf_nn
	add	sp,	#6 
	mov	er4,	er0

;;				_flgUartFin = 0; 
CLINEA 0000H 0001H 0275H 0005H 0015H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;				uart_stop();
CLINEA 0000H 0001H 0276H 0005H 0010H
	bl	_uart_stop

;;				uart_startSend(PrintContent, c, _funcUartFin);  
CLINEA 0000H 0001H 0277H 0005H 0034H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	er4
	mov	r0,	#BYTE1 OFFSET _PrintContent
	mov	r1,	#BYTE2 OFFSET _PrintContent
	bl	_uart_startSend
	add	sp,	#2 

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0278H 0001H 0001H
	bal	_$L91

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0278H 0005H 001CH
_$L87 :
CBLOCK 203 6 632

;;					main_clrWDT();
CLINEA 0000H 0001H 0279H 0006H 0013H
	bl	_main_clrWDT
CBLOCKEND 203 6 634

;;				while(_flgUartFin != 1){
CLINEA 0000H 0000H 0278H 0001H 0001H
_$L91 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L87

;;				}  
CLINEA 0000H 0000H 027AH 0005H 0007H
_$L86 :
CBLOCKEND 203 3 636

;;	        while(PC7D)
CLINEA 0000H 0000H 025BH 0000H 0000H
	tb	0f260h.7
	beq	_$M13
	b	_$L74
_$M13 :
CBLOCKEND 203 2 637

;;}
CLINEA 0000H 0001H 027DH 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 203 1 637
CFUNCTIONEND 203


	rseg $$Temperature_Sensor_20$main
CFUNCTION 204

_Temperature_Sensor_20	:
CBLOCK 204 1 650

;;void Temperature_Sensor_20(){
CLINEA 0000H 0001H 028AH 0001H 001DH
CBLOCK 204 2 650
CBLOCKEND 204 2 659

;;}
CLINEA 0000H 0001H 0293H 0001H 0001H
	rt
CBLOCKEND 204 1 659
CFUNCTIONEND 204


	rseg $$Temperature_Sensor_21$main
CFUNCTION 205

_Temperature_Sensor_21	:
CBLOCK 205 1 677

;;void Temperature_Sensor_21(){
CLINEA 0000H 0001H 02A5H 0001H 001DH
CBLOCK 205 2 677
CBLOCKEND 205 2 686

;;}
CLINEA 0000H 0001H 02AEH 0001H 0001H
	rt
CBLOCKEND 205 1 686
CFUNCTIONEND 205


	rseg $$Temperature_Sensor_22$main
CFUNCTION 206

_Temperature_Sensor_22	:
CBLOCK 206 1 704

;;void Temperature_Sensor_22(){
CLINEA 0000H 0001H 02C0H 0001H 001DH
CBLOCK 206 2 704
CBLOCKEND 206 2 713

;;}
CLINEA 0000H 0001H 02C9H 0001H 0001H
	rt
CBLOCKEND 206 1 713
CFUNCTIONEND 206


	rseg $$Temperature_Sensor_23$main
CFUNCTION 207

_Temperature_Sensor_23	:
CBLOCK 207 1 730

;;void Temperature_Sensor_23(){
CLINEA 0000H 0001H 02DAH 0001H 001DH
CBLOCK 207 2 730
CBLOCKEND 207 2 739

;;}
CLINEA 0000H 0001H 02E3H 0001H 0001H
	rt
CBLOCKEND 207 1 739
CFUNCTIONEND 207


	rseg $$DeviceSelection$main
CFUNCTION 193

_DeviceSelection	:
CBLOCK 193 1 751

;;{  
CLINEA 0000H 0001H 02EFH 0001H 0003H
CBLOCK 193 2 751

;;	SensorPlatformSelection |= PD0D;
CLINEA 0000H 0001H 02F2H 0002H 0021H
	l	r0,	0f268h
	and	r0,	#01h
	st	r0,	NEAR _SensorPlatformSelection

;;	SensorPlatformSelection |= PD1D<<1;
CLINEA 0000H 0001H 02F3H 0002H 0024H
	l	r0,	0f268h
	srl	r0,	#01h
	and	r0,	#01h
	sll	r0,	#01h
	l	r1,	NEAR _SensorPlatformSelection
	or	r1,	r0

;;	SensorPlatformSelection |= PD2D<<2;
CLINEA 0000H 0001H 02F4H 0002H 0024H
	l	r0,	0f268h
	srl	r0,	#02h
	and	r0,	#01h
	sll	r0,	#02h
	or	r1,	r0

;;	SensorPlatformSelection |= PD3D<<3;
CLINEA 0000H 0001H 02F5H 0002H 0024H
	l	r0,	0f268h
	srl	r0,	#03h
	and	r0,	#01h
	sll	r0,	#03h
	or	r1,	r0

;;	SensorPlatformSelection |= PD4D<<4; 
CLINEA 0000H 0001H 02F6H 0002H 0025H
	l	r0,	0f268h
	srl	r0,	#04h
	and	r0,	#01h
	sll	r0,	#04h
	or	r1,	r0

;;	SensorPlatformSelection |= PD5D<<5; 
CLINEA 0000H 0001H 02F7H 0002H 0025H
	l	r0,	0f268h
	srl	r0,	#05h
	and	r0,	#01h
	sll	r0,	#05h
	or	r1,	r0
	st	r1,	NEAR _SensorPlatformSelection
CBLOCKEND 193 2 760

;;}
CLINEA 0000H 0001H 02F8H 0001H 0001H
	rt
CBLOCKEND 193 1 760
CFUNCTIONEND 193


	rseg $$main_clrWDT$main
CFUNCTION 179

_main_clrWDT	:
CBLOCK 179 1 795

;;{
CLINEA 0000H 0001H 031BH 0001H 0001H
CBLOCK 179 2 795

;;	do {
CLINEA 0000H 0001H 031EH 0002H 0005H
_$L100 :
CBLOCK 179 3 798

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 031FH 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 179 3 800

;;	} while (WDP != 1);
CLINEA 0000H 0000H 0320H 0002H 0014H
	tb	0f00eh.0
	beq	_$L100

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 0321H 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 179 2 802

;;}
CLINEA 0000H 0001H 0322H 0001H 0001H
	rt
CBLOCKEND 179 1 802
CFUNCTIONEND 179


	rseg $$Initialization$main
CFUNCTION 180

_Initialization	:
CBLOCK 180 1 807

;;static void Initialization(void){
CLINEA 0000H 0001H 0327H 0001H 0021H
	push	lr
CBLOCK 180 2 807
CRET 0000H

;;	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 032BH 0002H 0045H
	sb	0f02ah.0

;;	DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 032CH 0002H 0042H
	rb	0f02ah.2

;;	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
CLINEA 0000H 0001H 032DH 0002H 0032H
	sb	0f02ah.3

;;	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 032EH 0002H 0045H
	sb	0f02ah.6

;;	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
CLINEA 0000H 0001H 032FH 0002H 0047H
	rb	0f02ah.7

;;	BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 0331H 0002H 0026H
	mov	r0,	#00h
	st	r0,	0f02ch

;;	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 0332H 0002H 0052H
	st	r0,	0f02eh

;;	BLKCON7 = 0x0F; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 0333H 0002H 0058H
	mov	r0,	#0fh
	st	r0,	0f02fh

;;	PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
CLINEA 0000H 0001H 0336H 0002H 003CH
	bl	_PortA_Low

;;	PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
CLINEA 0000H 0001H 0337H 0002H 003CH
	bl	_PortB_Low

;;	PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
CLINEA 0000H 0001H 0338H 0002H 003CH
	bl	_PortC_Low

;;	PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low
CLINEA 0000H 0001H 0339H 0002H 003CH
	bl	_PortD_Low

;;	PA2DIR = 0;		
CLINEA 0000H 0001H 033EH 0002H 000EH
	rb	0f251h.2

;;	PA2C0 = 1;		
CLINEA 0000H 0001H 033FH 0002H 000DH
	sb	0f252h.2

;;	PA2C1 = 1;		
CLINEA 0000H 0001H 0340H 0002H 000DH
	sb	0f253h.2

;;	PA2MD0 = 0;
CLINEA 0000H 0001H 0341H 0002H 000CH
	rb	0f254h.2

;;	PA2MD1 = 0;
CLINEA 0000H 0001H 0342H 0002H 000CH
	rb	0f255h.2

;;	PA2D = 1;
CLINEA 0000H 0001H 0343H 0002H 000AH
	sb	0f250h.2

;;	PA1DIR = 1;		//GPIO Input
CLINEA 0000H 0001H 0346H 0002H 001AH
	sb	0f251h.1

;;	SACH1 = 1;		//This enables the ADC Channel 1 from the corrected pin
CLINEA 0000H 0001H 0347H 0002H 0044H
	sb	0f2f2h.1

;;	SALP = 0;		//Single Read or Continuous Read... Single = 0, Consecutive = 1
CLINEA 0000H 0001H 0348H 0002H 004BH
	rb	0f2f0h.0

;;    SetOSC();
CLINEA 0000H 0001H 034BH 0005H 000DH
	bl	_SetOSC

;;	irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 034FH 0002H 0020H
	bl	_irq_di

;;	irq_init();	// Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 0350H 0002H 003FH
	bl	_irq_init

;;	IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
CLINEA 0000H 0001H 0353H 0002H 0033H
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
CLINEA 0000H 0001H 0355H 0002H 003BH
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;	E2H = 0;	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
CLINEA 0000H 0001H 0357H 0002H 0045H
	rb	0f017h.3

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
CLINEA 0000H 0001H 0359H 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0fh
	bl	_irq_setHdr

;;	EUA0 = 1; 	// EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 035AH 0002H 004AH
	sb	0f014h.0

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 035CH 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;	EI2CM = 1;
CLINEA 0000H 0001H 035DH 0002H 000BH
	sb	0f012h.7

;;	QI2CM = 0;
CLINEA 0000H 0001H 035EH 0002H 000BH
	rb	0f01ah.7

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_SADINT, _intADC );
CLINEA 0000H 0001H 0361H 0002H 003BH
	mov	r2,	#BYTE1 OFFSET __intADC
	mov	r3,	#BYTE2 OFFSET __intADC
	mov	r0,	#0ah
	bl	_irq_setHdr

;;	ESAD = 1;
CLINEA 0000H 0001H 0362H 0002H 000AH
	sb	0f012h.2

;;	QSAD = 0;
CLINEA 0000H 0001H 0363H 0002H 000AH
	rb	0f01ah.2

;;	irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 036FH 0002H 001FH
	bl	_irq_ei

;;	WDTMOD = 0x01; 	
CLINEA 0000H 0001H 037BH 0002H 0011H
	mov	r0,	#01h
	st	r0,	0f00fh

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 037CH 0002H 001DH
	bl	_main_clrWDT

;;	HelloWorld[12] 	= 0x0D;
CLINEA 0000H 0001H 037FH 0002H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0ch

;;	HelloWorld[13] 	= 0x0A;
CLINEA 0000H 0001H 0380H 0002H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _HelloWorld+0dh

;;	HelloWorld[10] = 17;
CLINEA 0000H 0001H 0381H 0002H 0015H
	mov	r0,	#011h
	st	r0,	NEAR _HelloWorld+0ah

;;	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
CLINEA 0000H 0001H 0387H 0002H 0045H
	mov	r0,	#00h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#01h
	bl	_i2c_init
	add	sp,	#2 

;;			     &_uartSetParam );						/* Param... 	 */
CLINEA 0000H 0001H 038CH 0009H 002FH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;	uart_PortSet();
CLINEA 0000H 0001H 038DH 0002H 0010H
	bl	_uart_PortSet

;;	HelloWorld[15] = 13;
CLINEA 0000H 0001H 038FH 0002H 0015H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0fh

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0390H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();	
CLINEA 0000H 0001H 0391H 0002H 000EH
	bl	_uart_stop

;;	uart_startSend(HelloWorld, 16, _funcUartFin); // Send, "Hello World!"
CLINEA 0000H 0001H 0392H 0002H 0046H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#16
	mov	r0,	#BYTE1 OFFSET _HelloWorld
	mov	r1,	#BYTE2 OFFSET _HelloWorld
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0393H 0001H 0015H
	bal	_$L107

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0393H 0002H 0019H
_$L105 :
CBLOCK 180 3 915

;;		main_clrWDT();
CLINEA 0000H 0001H 0394H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 180 3 917

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0393H 0001H 0015H
_$L107 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L105
CBLOCKEND 180 2 919

;;}//End Initialization
CLINEA 0000H 0001H 0397H 0001H 0015H
	pop	pc
CBLOCKEND 180 1 919
CFUNCTIONEND 180


	rseg $$Configure_KMX61$main
CFUNCTION 208

_Configure_KMX61	:
CBLOCK 208 1 923

;;{
CLINEA 0000H 0001H 039BH 0001H 0001H
	push	lr
CBLOCK 208 2 923
CRET 0000H

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 039CH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 039DH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &STBY_REG , 1,&STBY_REG_OFF_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 039EH 0002H 0072H
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
CLINEA 0000H 0000H 039FH 0001H 0001H
	bal	_$L145

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 039FH 0002H 004EH
_$L111 :
CBLOCK 208 3 927

;;		main_clrWDT();
CLINEA 0000H 0001H 03A0H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 3 929

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 039FH 0001H 0001H
_$L145 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L111

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03A2H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03A3H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &SELF_TEST , 1,&SELF_TEST_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03A4H 0002H 0070H
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
CLINEA 0000H 0000H 03A5H 0001H 0001H
	bal	_$L146

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03A5H 0002H 004EH
_$L115 :
CBLOCK 208 4 933

;;		main_clrWDT();
CLINEA 0000H 0001H 03A6H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 4 935

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03A5H 0001H 0001H
_$L146 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L115

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03A8H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03A9H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &CNTL1 , 1,&CNTL1_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03AAH 0002H 0068H
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
CLINEA 0000H 0000H 03ABH 0001H 0001H
	bal	_$L147

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03ABH 0002H 004EH
_$L119 :
CBLOCK 208 5 939

;;		main_clrWDT();
CLINEA 0000H 0001H 03ACH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 5 941

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03ABH 0001H 0001H
_$L147 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L119

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03AEH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03AFH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &CNTL2 , 1,&CNTL2_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03B0H 0002H 0068H
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
CLINEA 0000H 0000H 03B1H 0001H 0001H
	bal	_$L148

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03B1H 0002H 004EH
_$L123 :
CBLOCK 208 6 945

;;		main_clrWDT();
CLINEA 0000H 0001H 03B2H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 6 947

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03B1H 0001H 0001H
_$L148 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L123

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03B4H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03B5H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &ODCNTL , 1,&ODCNTL_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03B6H 0002H 006AH
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
CLINEA 0000H 0000H 03B7H 0001H 0001H
	bal	_$L149

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03B7H 0002H 004EH
_$L127 :
CBLOCK 208 7 951

;;		main_clrWDT();
CLINEA 0000H 0001H 03B8H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 7 953

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03B7H 0001H 0001H
_$L149 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L127

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03BAH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03BBH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &TEMP_EN_CNTL , 1,&TEMP_EN_CNTL_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03BCH 0002H 0076H
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
CLINEA 0000H 0000H 03BDH 0001H 0001H
	bal	_$L150

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03BDH 0002H 004EH
_$L131 :
CBLOCK 208 8 957

;;		main_clrWDT();
CLINEA 0000H 0001H 03BEH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 8 959

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03BDH 0001H 0001H
_$L150 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L131

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03C0H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03C1H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &BUF_CTRL1 , 1,&BUF_CTRL1_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03C2H 0002H 0070H
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
CLINEA 0000H 0000H 03C3H 0001H 0001H
	bal	_$L151

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03C3H 0002H 004EH
_$L135 :
CBLOCK 208 9 963

;;		main_clrWDT();
CLINEA 0000H 0001H 03C4H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 9 965

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03C3H 0001H 0001H
_$L151 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L135

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03C6H 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03C7H 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &BUF_CTRL2 , 1,&BUF_CTRL2_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03C8H 0002H 0070H
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
CLINEA 0000H 0000H 03C9H 0001H 0001H
	bal	_$L152

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03C9H 0002H 004EH
_$L139 :
CBLOCK 208 10 969

;;		main_clrWDT();
CLINEA 0000H 0001H 03CAH 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 10 971

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03C9H 0001H 0001H
_$L152 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L139

;;	_flgI2CFin = 0;														//reset I2C completed flag
CLINEA 0000H 0001H 03CCH 0002H 0038H
	mov	r0,	#00h
	st	r0,	NEAR __flgI2CFin

;;	i2c_stop();															//Make sure I2C is not currently running
CLINEA 0000H 0001H 03CDH 0002H 0043H
	bl	_i2c_stop

;;	i2c_startSend(SAD_KMX61, &STBY_REG , 1,&STBY_REG_DATA , 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
CLINEA 0000H 0001H 03CEH 0002H 006EH
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
CLINEA 0000H 0000H 03CFH 0001H 0001H
	bal	_$L153

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03CFH 0002H 004EH
_$L143 :
CBLOCK 208 11 975

;;		main_clrWDT();
CLINEA 0000H 0001H 03D0H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 208 11 977

;;	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
CLINEA 0000H 0000H 03CFH 0001H 0001H
_$L153 :
	l	r0,	NEAR __flgI2CFin
	cmp	r0,	#01h
	bne	_$L143
CBLOCKEND 208 2 978

;;}
CLINEA 0000H 0001H 03D2H 0001H 0001H
	pop	pc
CBLOCKEND 208 1 978
CFUNCTIONEND 208


	rseg $$_funcUartFin$main
CFUNCTION 186

__funcUartFin	:
CBLOCK 186 1 988

;;{
CLINEA 0000H 0001H 03DCH 0001H 0001H
	push	lr
CBLOCK 186 2 988
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 03DDH 0002H 0054H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 03DEH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 03DFH 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 186 2 992

;;}
CLINEA 0000H 0001H 03E0H 0001H 0001H
	pop	pc
CBLOCKEND 186 1 992
CFUNCTIONEND 186


	rseg $$_funcI2CFin$main
CFUNCTION 187

__funcI2CFin	:
CBLOCK 187 1 1003

;;{
CLINEA 0000H 0001H 03EBH 0001H 0001H
	push	lr
CBLOCK 187 2 1003
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 03ECH 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 03EDH 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 03EEH 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 187 2 1007

;;}
CLINEA 0000H 0001H 03EFH 0001H 0001H
	pop	pc
CBLOCKEND 187 1 1007
CFUNCTIONEND 187


	rseg $$_intI2c$main
CFUNCTION 190

__intI2c	:
CBLOCK 190 1 1017

;;{
CLINEA 0000H 0001H 03F9H 0001H 0001H
	push	lr
CBLOCK 190 2 1017
CRET 0000H

;;	(void)i2c_continue();
CLINEA 0000H 0001H 03FAH 0002H 0016H
	bl	_i2c_continue

;;	main_reqNotHalt();
CLINEA 0000H 0001H 03FBH 0002H 0013H
	bl	_main_reqNotHalt
CBLOCKEND 190 2 1020

;;}
CLINEA 0000H 0001H 03FCH 0001H 0001H
	pop	pc
CBLOCKEND 190 1 1020
CFUNCTIONEND 190


	rseg $$_intADC$main
CFUNCTION 191

__intADC	:
CBLOCK 191 1 1030

;;{
CLINEA 0000H 0001H 0406H 0001H 0001H
CBLOCK 191 2 1030

;;	_flgADCFin = 1;
CLINEA 0000H 0001H 0407H 0002H 0010H
	mov	r0,	#01h
	st	r0,	NEAR __flgADCFin
CBLOCKEND 191 2 1032

;;}
CLINEA 0000H 0001H 0408H 0001H 0001H
	rt
CBLOCKEND 191 1 1032
CFUNCTIONEND 191


	rseg $$main_reqNotHalt$main
CFUNCTION 188

_main_reqNotHalt	:
CBLOCK 188 1 1042

;;{
CLINEA 0000H 0001H 0412H 0001H 0001H
CBLOCK 188 2 1042

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0413H 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 188 2 1044

;;}
CLINEA 0000H 0001H 0414H 0001H 0001H
	rt
CBLOCKEND 188 1 1044
CFUNCTIONEND 188


	rseg $$_intUart$main
CFUNCTION 189

__intUart	:
CBLOCK 189 1 1054

;;{
CLINEA 0000H 0001H 041EH 0001H 0001H
CBLOCK 189 2 1054

;;	uart_continue(); 	//in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 041FH 0002H 0047H
	b	_uart_continue
CBLOCKEND 189 2 1056
CLINEA 0000H 0001H 0420H 0001H 0001H
CBLOCKEND 189 1 1056
CFUNCTIONEND 189


	rseg $$SetOSC$main
CFUNCTION 181

_SetOSC	:
CBLOCK 181 1 1061

;;static void SetOSC(void){
CLINEA 0000H 0001H 0425H 0001H 0019H
CBLOCK 181 2 1061

;;	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 0428H 0002H 004AH
	rb	0f002h.0

;;	SYSC1 = 0;
CLINEA 0000H 0001H 0429H 0002H 000BH
	rb	0f002h.1

;;	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 042BH 0002H 0034H
	sb	0f002h.3

;;	OSCM0 = 0;
CLINEA 0000H 0001H 042CH 0002H 000BH
	rb	0f002h.2

;;	ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 042EH 0002H 0031H
	sb	0f003h.1

;;	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 042FH 0002H 0022H
	sb	0f003h.0

;;	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 0431H 0002H 0045H
	sb	0f003h.7

;;	__EI();			//INT enable
CLINEA 0000H 0001H 0433H 0002H 0017H
	ei
CBLOCKEND 181 2 1076

;;}
CLINEA 0000H 0001H 0434H 0001H 0001H
	rt
CBLOCKEND 181 1 1076
CFUNCTIONEND 181


	rseg $$PortA_Low$main
CFUNCTION 182

_PortA_Low	:
CBLOCK 182 1 1082

;;void PortA_Low(void){
CLINEA 0000H 0001H 043AH 0001H 0015H
CBLOCK 182 2 1082

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 0444H 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 0445H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 0446H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0449H 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 044AH 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 044BH 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 044CH 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 044DH 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 044EH 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 0451H 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0452H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 0453H 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0454H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0455H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0456H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 0459H 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 045AH 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 045BH 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 045DH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 182 2 1118
CLINEA 0000H 0001H 045EH 0001H 0001H
CBLOCKEND 182 1 1118
CFUNCTIONEND 182


	rseg $$PortB_Low$main
CFUNCTION 183

_PortB_Low	:
CBLOCK 183 1 1124

;;void PortB_Low(void){
CLINEA 0000H 0001H 0464H 0001H 0015H
CBLOCK 183 2 1124

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 046EH 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 046FH 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 0470H 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 0471H 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 0472H 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 0473H 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0474H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0475H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0478H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0479H 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 047AH 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 047BH 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 047CH 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 047DH 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 047EH 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 047FH 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0480H 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 0481H 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0482H 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 0483H 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 0484H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 0485H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 0486H 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 0487H 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 048AH 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 048BH 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 048CH 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 048DH 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 048EH 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 048FH 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0490H 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 0491H 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0492H 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 0493H 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0494H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 0495H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0496H 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 0497H 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0498H 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 0499H 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 049CH 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 049DH 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 049EH 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 049FH 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 04A0H 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 04A1H 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 04A2H 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 04A3H 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 04A5H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 183 2 1190
CLINEA 0000H 0001H 04A6H 0001H 0001H
CBLOCKEND 183 1 1190
CFUNCTIONEND 183


	rseg $$PortC_Low$main
CFUNCTION 184

_PortC_Low	:
CBLOCK 184 1 1196

;;void PortC_Low(void){
CLINEA 0000H 0001H 04ACH 0001H 0015H
CBLOCK 184 2 1196

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 04B6H 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 04B7H 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 04B8H 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 04B9H 0002H 0031H
	rb	0f261h.3

;;	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
CLINEA 0000H 0001H 04BAH 0002H 0031H
	rb	0f261h.4

;;	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
CLINEA 0000H 0001H 04BBH 0002H 0031H
	rb	0f261h.5

;;	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
CLINEA 0000H 0001H 04BCH 0002H 0031H
	rb	0f261h.6

;;	PC7DIR = 1;		// PortC Bit7 set to Output Mode...
CLINEA 0000H 0001H 04BDH 0002H 0031H
	sb	0f261h.7

;;	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
CLINEA 0000H 0001H 04C0H 0002H 003BH
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 04C1H 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
CLINEA 0000H 0001H 04C2H 0002H 003BH
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 04C3H 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
CLINEA 0000H 0001H 04C4H 0002H 003BH
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 04C5H 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
CLINEA 0000H 0001H 04C6H 0002H 003BH
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 04C7H 0002H 000EH
	sb	0f262h.3

;;	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
CLINEA 0000H 0001H 04C8H 0002H 003BH
	sb	0f263h.4

;;	PC4C0  = 1;	
CLINEA 0000H 0001H 04C9H 0002H 000DH
	sb	0f262h.4

;;	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
CLINEA 0000H 0001H 04CAH 0002H 003BH
	sb	0f263h.5

;;	PC5C0  = 1;	
CLINEA 0000H 0001H 04CBH 0002H 000DH
	sb	0f262h.5

;;	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
CLINEA 0000H 0001H 04CCH 0002H 003BH
	sb	0f263h.6

;;	PC6C0  = 1;	
CLINEA 0000H 0001H 04CDH 0002H 000DH
	sb	0f262h.6

;;	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
CLINEA 0000H 0001H 04CEH 0002H 003BH
	sb	0f263h.7

;;	PC7C0  = 1;	
CLINEA 0000H 0001H 04CFH 0002H 000DH
	sb	0f262h.7

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 04D2H 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 04D3H 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 04D4H 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 04D5H 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 04D6H 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 04D7H 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 04D8H 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 04D9H 0002H 000EH
	rb	0f264h.3

;;	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 04DAH 0002H 003CH
	rb	0f265h.4

;;	PC4MD0  = 0;	
CLINEA 0000H 0001H 04DBH 0002H 000EH
	rb	0f264h.4

;;	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 04DCH 0002H 003CH
	rb	0f265h.5

;;	PC5MD0  = 0;
CLINEA 0000H 0001H 04DDH 0002H 000DH
	rb	0f264h.5

;;	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 04DEH 0002H 003CH
	rb	0f265h.6

;;	PC6MD0  = 0;	
CLINEA 0000H 0001H 04DFH 0002H 000EH
	rb	0f264h.6

;;	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 04E0H 0002H 003CH
	rb	0f265h.7

;;	PC7MD0  = 0;
CLINEA 0000H 0001H 04E1H 0002H 000DH
	rb	0f264h.7

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 04E4H 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 04E5H 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 04E6H 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 04E7H 0002H 0021H
	rb	0f260h.3

;;	PC4D = 0;		// C.4 Output OFF....
CLINEA 0000H 0001H 04E8H 0002H 0021H
	rb	0f260h.4

;;	PC5D = 0;		// C.5 Output OFF....
CLINEA 0000H 0001H 04E9H 0002H 0021H
	rb	0f260h.5

;;	PC6D = 0;		// C.6 Output OFF....
CLINEA 0000H 0001H 04EAH 0002H 0021H
	rb	0f260h.6

;;	PC7D = 0;		// C.7 Output OFF....
CLINEA 0000H 0001H 04EBH 0002H 0021H
	rb	0f260h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 04EDH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 184 2 1263
CLINEA 0000H 0001H 04EFH 0001H 0001H
CBLOCKEND 184 1 1263
CFUNCTIONEND 184


	rseg $$PortD_Low$main
CFUNCTION 185

_PortD_Low	:
CBLOCK 185 1 1269

;;void PortD_Low(void){
CLINEA 0000H 0001H 04F5H 0001H 0015H
CBLOCK 185 2 1269

;;	PD0DIR = 1;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 04FEH 0002H 0031H
	sb	0f269h.0

;;	PD1DIR = 1;		// PortD Bit1 set to Output Mode...
CLINEA 0000H 0001H 04FFH 0002H 0031H
	sb	0f269h.1

;;	PD2DIR = 1;		// PortD Bit2 set to Output Mode...
CLINEA 0000H 0001H 0500H 0002H 0031H
	sb	0f269h.2

;;	PD3DIR = 1;		// PortD Bit3 set to Output Mode...
CLINEA 0000H 0001H 0501H 0002H 0031H
	sb	0f269h.3

;;	PD4DIR = 1;		// PortD Bit4 set to Output Mode...
CLINEA 0000H 0001H 0502H 0002H 0031H
	sb	0f269h.4

;;	PD5DIR = 1;		// PortD Bit5 set to Output Mode...
CLINEA 0000H 0001H 0503H 0002H 0031H
	sb	0f269h.5

;;	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0506H 0002H 002FH
	sb	0f26bh.0

;;	PD0C0= 1;		
CLINEA 0000H 0001H 0507H 0002H 000CH
	sb	0f26ah.0

;;	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0508H 0002H 002FH
	sb	0f26bh.1

;;	PD1C0= 1;	
CLINEA 0000H 0001H 0509H 0002H 000BH
	sb	0f26ah.1

;;	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
CLINEA 0000H 0001H 050AH 0002H 002FH
	sb	0f26bh.2

;;	PD2C0= 1;	
CLINEA 0000H 0001H 050BH 0002H 000BH
	sb	0f26ah.2

;;	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
CLINEA 0000H 0001H 050CH 0002H 002FH
	sb	0f26bh.3

;;	PD3C0= 1;		
CLINEA 0000H 0001H 050DH 0002H 000CH
	sb	0f26ah.3

;;	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
CLINEA 0000H 0001H 050EH 0002H 002FH
	sb	0f26bh.4

;;	PD4C0= 1;	
CLINEA 0000H 0001H 050FH 0002H 000BH
	sb	0f26ah.4

;;	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0510H 0002H 002FH
	sb	0f26bh.5

;;	PD5C0= 1;	
CLINEA 0000H 0001H 0511H 0002H 000BH
	sb	0f26ah.5

;;	PD0D = 0;		// D.0 Output OFF....
CLINEA 0000H 0001H 0514H 0002H 0021H
	rb	0f268h.0

;;	PD1D = 0;		// D.1 Output OFF....
CLINEA 0000H 0001H 0515H 0002H 0021H
	rb	0f268h.1

;;	PD2D = 0;		// D.2 Output OFF....
CLINEA 0000H 0001H 0516H 0002H 0021H
	rb	0f268h.2

;;	PD3D = 0;		// D.3 Output OFF....
CLINEA 0000H 0001H 0517H 0002H 0021H
	rb	0f268h.3

;;	PD4D = 0;		// D.4 Output OFF....
CLINEA 0000H 0001H 0518H 0002H 0021H
	rb	0f268h.4

;;	PD5D = 0;		// D.5 Output OFF....
CLINEA 0000H 0001H 0519H 0002H 0021H
	rb	0f268h.5

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 051BH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 185 2 1308
CLINEA 0000H 0001H 051CH 0001H 0001H
CBLOCKEND 185 1 1308
CFUNCTIONEND 185


	rseg $$NOPms$main
CFUNCTION 192

_NOPms	:
CBLOCK 192 1 1323

;;{
CLINEA 0000H 0001H 052BH 0001H 0001H
	push	lr
	push	xr4
	push	bp
	push	er8
	mov	er8,	er0
CBLOCK 192 2 1323
CRET 0008H
CARGUMENT 46H 0002H 0028H "ms" 02H 00H 01H
CLOCAL 46H 0002H 002AH 0002H "timerThres" 02H 00H 01H
CLOCAL 46H 0001H 001AH 0002H "TimeFlag" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "TempSec" 02H 00H 01H
CLOCAL 46H 0002H 0024H 0002H "timer" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "timertest" 02H 00H 01H

;;	TempSec = ms;
CLINEA 0000H 0001H 0532H 0002H 000EH
	mov	er4,	er0

;;	TimeFlag = 0;
CLINEA 0000H 0001H 0533H 0002H 000EH
	mov	r6,	#00h

;;	tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 0535H 0002H 0016H
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
CLINEA 0000H 0001H 0539H 0002H 000EH
	mov	er0,	er8
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bge	_$L166
CBLOCK 192 3 1337

;;		timerThres = 0x1FF * ms;
CLINEA 0000H 0001H 053AH 0003H 001AH
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r8
	subc	r1,	r9
	mov	bp,	er0

;;		TimeFlag = 0;
CLINEA 0000H 0001H 053BH 0003H 000FH
CBLOCKEND 192 3 1340

;;	}
CLINEA 0000H 0000H 053CH 0002H 0002H
_$L166 :

;;	if(ms == 128){
CLINEA 0000H 0001H 053DH 0002H 000FH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bne	_$L168
CBLOCK 192 4 1341

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 053EH 0003H 0016H
	mov	bp,	#-1

;;		TimeFlag = 0;
CLINEA 0000H 0001H 053FH 0003H 000FH
	mov	r6,	#00h
CBLOCKEND 192 4 1344

;;	}
CLINEA 0000H 0000H 0540H 0002H 0002H
_$L168 :

;;	if(ms > 128){
CLINEA 0000H 0001H 0541H 0002H 000EH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	ble	_$L178
CBLOCK 192 5 1345

;;		while(TempSec > 128){
CLINEA 0000H 0000H 0542H 0001H 0001H
	bal	_$L188

;;		while(TempSec > 128){
CLINEA 0000H 0000H 0542H 0003H 0017H
_$L174 :
CBLOCK 192 6 1346

;;			TempSec -= 128;
CLINEA 0000H 0001H 0543H 0004H 0012H
	add	r0,	#080h
	addc	r1,	#0ffh
	mov	er4,	er0

;;			TimeFlag++;
CLINEA 0000H 0000H 0544H 0004H 000EH
	add	r6,	#01h
CBLOCKEND 192 6 1349

;;		while(TempSec > 128){
CLINEA 0000H 0000H 0542H 0001H 0001H
_$L188 :
	mov	er0,	er4
	cmp	r4,	#080h
	cmpc	r5,	#00h
	bgt	_$L174

;;		if(TempSec != 0){
CLINEA 0000H 0001H 0546H 0003H 0013H
	mov	er4,	er4
	beq	_$L176
CBLOCK 192 7 1350

;;			timerThres = 0x1FF * TempSec;
CLINEA 0000H 0001H 0547H 0004H 0020H
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r4
	subc	r1,	r5
	mov	bp,	er0
CBLOCKEND 192 7 1352

;;		else{
CLINEA 0000H 0001H 0549H 0003H 0007H
	bal	_$L178
_$L176 :
CBLOCK 192 8 1353

;;			timerThres = 0xFFFF;
CLINEA 0000H 0001H 054AH 0004H 0017H
	mov	bp,	#-1

;;			TimeFlag--;
CLINEA 0000H 0000H 054BH 0004H 000EH
	add	r6,	#0ffh
CBLOCKEND 192 8 1356

;;		}
CLINEA 0000H 0000H 054CH 0003H 0003H
_$L178 :
CBLOCKEND 192 5 1357

;;	main_clrWDT();	
CLINEA 0000H 0001H 0550H 0002H 0010H
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
CLINEA 0000H 0001H 0554H 0002H 001BH
	bal	_$L181
_$L183 :
CBLOCK 192 9 1364

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
CLINEA 0000H 0000H 0555H 0003H 001CH
CBLOCKEND 192 9 1367

;;	}
CLINEA 0000H 0000H 0557H 0002H 0002H
_$L181 :

;;	while(timer < timerThres){
CLINEA 0000H 0000H 0554H 0000H 0000H
	cmp	er0,	bp
	blt	_$L183

;;	if(TimeFlag !=0){
CLINEA 0000H 0001H 0558H 0002H 0012H
	cmp	r6,	#00h
	beq	_$L186

;;		tm_stopAB();
CLINEA 0000H 0001H 0105H 0002H 000BH
	rb	0f8ebh.0

;;		TimeFlag--;
CLINEA 0000H 0000H 055AH 0003H 000DH
	add	r6,	#0ffh

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 055BH 0003H 0016H
	mov	bp,	#-1

;;		goto TimerRestart;
CLINEA 0000H 0001H 055CH 0003H 0014H
	bal	_$L178

;;	}
CLINEA 0000H 0000H 055DH 0002H 0002H
_$L186 :
CBLOCKEND 192 2 1374

;;}
CLINEA 0000H 0001H 055EH 0001H 0001H
	pop	er8
	pop	bp
	pop	xr4
	pop	pc
CBLOCKEND 192 1 1374
CFUNCTIONEND 192

	public _NOPms
	public _main_clrWDT
	public _main_reqNotHalt
	public _DeviceSelection
	public _Configure_KMX61
	public _KMX061
	public _Temperature_Sensor_20
	public _Temperature_Sensor_21
	public _Temperature_Sensor_22
	public _Temperature_Sensor_23
	public _main
	public _PortD_Low
	public _PortC_Low
	public _KX022
	public _UV_Sensor_10
	public _PortB_Low
	public _Ambient_Light_Sensor_8
	public _Ambient_Light_Sensor_9
	public _Ambient_Light_Sensor_5
	public _Ambient_Light_Sensor_6
	public _Ambient_Light_Sensor_7
	public _testPrint
	public _PortA_Low
	public _Hall_Effect_Sensors_0
	public _Hall_Effect_Sensors_1
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

	rseg $$NTABmain$main
_$M1 :
	dw	_$S41
	dw	_$S42
	dw	_$L39
	dw	_$L39
	dw	_$L39
	dw	_$S43
	dw	_$S44
	dw	_$S45
	dw	_$S46
	dw	_$S47
	dw	_$S48
	dw	_$L39
	dw	_$L39
	dw	_$L39
	dw	_$L39
	dw	_$S49
	dw	_$S50
	dw	_$L39
	dw	_$L39
	dw	_$L39
	dw	_$S51
	dw	_$S52
	dw	_$S53
	dw	_$S54

	rseg $$NINITTAB
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
	DB	"  UV DETECTED! ", 00H
	align
	dw	00h
	dw	00h
	dw	00h

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

	rseg $$TAB$$S56$main
$$S56 :
	DB	"Selected %d\x0d", 00H

	rseg $$TAB$$S84$main
$$S84 :
	DB	"ax( %d )\x0d", 00H

	rseg $$NINITVAR
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
_UV_DETECTED :
	ds	010h
	align
_Test :
	ds	02h
_UVReturn :
	ds	02h
_ScaledUVReturn :
	ds	02h

	rseg $$NVARmain
_i :
	ds	02h
_j :
	ds	02h
_SensorReturn :
	ds	032h
_tmp :
	ds	02h
_PrintContent :
	ds	032h
_SensorPlatformSelection :
	ds	01h
	align
_UVIndex :
	ds	04h
_tempVal :
	ds	02h
_SensorOutput :
	ds	02h
_tmp1 :
	ds	02h
_UV_Offset :
	ds	02h

	end
