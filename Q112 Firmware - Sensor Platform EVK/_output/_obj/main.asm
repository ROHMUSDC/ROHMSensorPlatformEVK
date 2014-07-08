;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610112) 
	model small, near
	$$NVARmain segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$Initialization$main segment code 2h #0h
	$$NOPms$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$PortD_Low$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$TAB$$S103$main segment table 2h #0h
	$$TAB$$S63$main segment table 2h #0h
	$$TAB$$S77$main segment table 2h #0h
	$$TAB$$S86$main segment table 2h #0h
	$$TAB$$S97$main segment table 2h #0h
	$$TAB_uartSetParam$main segment table 2h #0h
	$$_funcI2CFin$main segment code 2h #0h
	$$_funcUartFin$main segment code 2h #0h
	$$_intADC$main segment code 2h #0h
	$$_intI2c$main segment code 2h #0h
	$$_intUart$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	$$main_reqNotHalt$main segment code 2h #0h
	STACKSEG 0100h
CVERSION 3.41.8
CGLOBAL 01H 03H 0000H "NOPms" 08H 02H 0C0H 00H 81H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 0B3H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 0BAH 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 0BCH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 0B4H 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 0C1H 00H 80H 10H 00H 00H 01H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 0BDH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortD_Low" 08H 02H 0B9H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 0BEH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 0B5H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 0B8H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intADC" 08H 02H 0BFH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 0B7H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 0B6H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 0BBH 00H 81H 02H 00H 00H 07H
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
CGLOBAL 00H 42H 0001H "_flgUartFin" 02H 00H 00H
CSGLOBAL 42H 0032H "SensorReturn" 05H 01H 32H 00H 00H 00H
CGLOBAL 00H 42H 0002H "testI2C" 02H 00H 01H
CGLOBAL 00H 42H 0002H "ret" 02H 00H 01H
CSGLOBAL 01H 000AH "_uartSetParam" 04H 00H 05H 03H 00H
CSGLOBAL 42H 0010H "UV_DETECTED" 05H 01H 10H 00H 00H 00H
CSGLOBAL 43H 0004H "UVIndex" 02H 00H 03H
CSGLOBAL 42H 0002H "UVReturn" 02H 00H 01H
CSGLOBAL 42H 0011H "HelloWorld" 05H 01H 11H 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CSGLOBAL 42H 0002H "Test" 02H 00H 01H
CSGLOBAL 42H 0002H "UV_Offset" 02H 00H 01H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_flgADCFin" 02H 00H 00H
CSGLOBAL 42H 0002H "ScaledUVReturn" 02H 00H 01H
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
CFILE 0000H 000003B7H "main\\main.c"

	rseg $$main$main
CFUNCTION 193

_main	:
CBLOCK 193 1 223

;;{
CLINEA 0000H 0001H 00DFH 0001H 0001H
CBLOCK 193 2 223
CLOCAL 47H 0002H 0026H 0002H "i" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "c" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "d" 02H 00H 01H

;;	Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 00E3H 0002H 0047H
	bl	_Initialization

;;		for(i=0;i<49;i++)
CLINEA 0000H 0001H 00E5H 0003H 0013H
	mov	er4,	#0 
_$L35 :
CBLOCK 193 3 230

;;			main_clrWDT(); 
CLINEA 0000H 0001H 00E7H 0004H 0012H
	bl	_main_clrWDT

;;			SensorReturn[i] = 0x20;
CLINEA 0000H 0001H 00E8H 0004H 001AH
	mov	r2,	#020h
	st	r2,	NEAR _SensorReturn[er4]
CBLOCKEND 193 3 233

;;		for(i=0;i<49;i++)
CLINEA 0000H 0000H 00E5H 0003H 0013H
	add	er4,	#1 
	cmp	r4,	#031h
	cmpc	r5,	#00h
	blts	_$L35

;;		SensorReturn[0] = 12;  
CLINEA 0000H 0001H 00EBH 0003H 0019H
	mov	r0,	#0ch
	st	r0,	NEAR _SensorReturn

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 00EDH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 00EEH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 1, _funcUartFin);
CLINEA 0000H 0001H 00EFH 0003H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#1 
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 00F0H 0001H 0002H
	bal	_$L112

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 00F0H 0003H 001AH
_$L41 :
CBLOCK 193 4 240

;;			main_clrWDT();
CLINEA 0000H 0001H 00F1H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 4 242

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 00F0H 0001H 0002H
_$L112 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 00F0H 0011H 001BH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L41
CBLOCK 193 5 246
CBLOCKEND 193 5 249

;;		SensorReturn[0] = 128; 
CLINEA 0000H 0001H 00FBH 0003H 0019H
	mov	r0,	#080h
	st	r0,	NEAR _SensorReturn

;;		SensorReturn[1] = 13;  
CLINEA 0000H 0001H 00FCH 0003H 0019H
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+01h

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 00FDH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 00FEH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 2, _funcUartFin);
CLINEA 0000H 0001H 00FFH 0003H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#2 
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0100H 0001H 0002H
	bal	_$L113

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0100H 0003H 001AH
_$L57 :
CBLOCK 193 7 256

;;			main_clrWDT();
CLINEA 0000H 0001H 0101H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 7 258

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0100H 0001H 0002H
_$L113 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0100H 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L57

;;		SensorReturn[0] = 0x20; 
CLINEA 0000H 0001H 0106H 0003H 001AH
	mov	r0,	#020h
	st	r0,	NEAR _SensorReturn

;;		SensorReturn[1] = 214; 
CLINEA 0000H 0001H 0107H 0003H 0019H
	mov	r0,	#0d6h
	st	r0,	NEAR _SensorReturn+01h

;;		SensorReturn[2] = 215; 
CLINEA 0000H 0001H 0108H 0003H 0019H
	mov	r0,	#0d7h
	st	r0,	NEAR _SensorReturn+02h

;;		SensorReturn[3] = 220;  
CLINEA 0000H 0001H 0109H 0003H 001AH
	mov	r0,	#0dch
	st	r0,	NEAR _SensorReturn+03h

;;		SensorReturn[4] = 22;  
CLINEA 0000H 0001H 010AH 0003H 0019H
	mov	r0,	#016h
	st	r0,	NEAR _SensorReturn+04h

;;		SensorReturn[5] = 0x20; 
CLINEA 0000H 0001H 010BH 0003H 001AH
	mov	r0,	#020h
	st	r0,	NEAR _SensorReturn+05h

;;		SensorReturn[6] = 128; 
CLINEA 0000H 0001H 010CH 0003H 0019H
	mov	r0,	#080h
	st	r0,	NEAR _SensorReturn+06h

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0110H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0111H 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 7, _funcUartFin);
CLINEA 0000H 0001H 0112H 0003H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#7 
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0113H 0001H 0002H
	bal	_$L114

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0113H 0003H 001AH
_$L61 :
CBLOCK 193 8 275

;;			main_clrWDT();
CLINEA 0000H 0001H 0114H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 8 277

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0113H 0001H 0002H
_$L114 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0113H 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L61

;;	    sprintf(SensorReturn, "UV SENSOR DEMO", 0); 
CLINEA 0000H 0001H 0118H 0006H 0031H
	mov	er0,	#0 
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S63
	mov	r1,	#BYTE2 OFFSET $$S63
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#6 

;;		SensorReturn[14] = 13; 
CLINEA 0000H 0001H 011AH 0003H 0019H
	mov	r0,	#0dh
	st	r0,	NEAR _SensorReturn+0eh

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 011DH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 011EH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 15, _funcUartFin);
CLINEA 0000H 0001H 011FH 0003H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#15
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0120H 0001H 0002H
	bal	_$L115

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0120H 0003H 001AH
_$L66 :
CBLOCK 193 9 288

;;			main_clrWDT();
CLINEA 0000H 0001H 0121H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 9 290

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0120H 0001H 0002H
_$L115 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0120H 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L66

;;		SARUN = 1;					//Start Obtaining ADC Info
CLINEA 0000H 0001H 0124H 0003H 002BH
	sb	0f2f1h.0

;;		while(_flgADCFin == 0)		//Wait for ADC to finish running
CLINEA 0000H 0000H 0125H 0001H 0002H
	bal	_$L116

;;		while(_flgADCFin == 0)		//Wait for ADC to finish running
CLINEA 0000H 0000H 0125H 0003H 003AH
_$L70 :
CBLOCK 193 10 294

;;			main_clrWDT();
CLINEA 0000H 0001H 0127H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 10 296

;;		while(_flgADCFin == 0)		//Wait for ADC to finish running
CLINEA 0000H 0000H 0125H 0001H 0002H
_$L116 :

;;		while(_flgADCFin == 0)		//Wait for ADC to finish running
CLINEA 0000H 0000H 0125H 0012H 001CH
	l	r0,	NEAR __flgADCFin
	beq	_$L70

;;		UV_Offset = (SADR1L>>6)+(SADR1H<<2);	 
CLINEA 0000H 0001H 0129H 0003H 0028H
	l	r0,	0f2d2h
	mov	r1,	#00h
	srlc	r0,	#06h
	sra	r1,	#06h
	l	r2,	0f2d3h
	mov	r3,	#00h
	sllc	r3,	#02h
	sll	r2,	#02h
	add	er2,	er0

;;		UV_Offset += 5; 
CLINEA 0000H 0001H 012AH 0003H 0012H
	mov	er0,	er2
	add	er0,	#5 
	st	er0,	NEAR _UV_Offset

;;Loop:	
CLINEA 0000H 0001H 012BH 0001H 0006H
CLABEL 0048H "Loop"
_$L72 :

;;		main_clrWDT();
CLINEA 0000H 0001H 012DH 0003H 0010H
	bl	_main_clrWDT

;;		_flgADCFin = 0;
CLINEA 0000H 0001H 012FH 0003H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgADCFin

;;		SARUN = 1;					//Start Obtaining ADC Info
CLINEA 0000H 0001H 0131H 0003H 002BH
	sb	0f2f1h.0

;;		while(_flgADCFin == 0)		//Wait for ADC to finish running
CLINEA 0000H 0000H 0132H 0001H 0002H
	bal	_$L117

;;		while(_flgADCFin == 0)		//Wait for ADC to finish running
CLINEA 0000H 0000H 0132H 0003H 003AH
_$L75 :
CBLOCK 193 11 307

;;			main_clrWDT();
CLINEA 0000H 0001H 0134H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 11 309

;;		while(_flgADCFin == 0)		//Wait for ADC to finish running
CLINEA 0000H 0000H 0132H 0001H 0002H
_$L117 :

;;		while(_flgADCFin == 0)		//Wait for ADC to finish running
CLINEA 0000H 0000H 0132H 0012H 001CH
	l	r0,	NEAR __flgADCFin
	beq	_$L75

;;		UVReturn = (SADR1L>>6)+(SADR1H<<2);		//Format RAW UV Sensor Output
CLINEA 0000H 0001H 0136H 0003H 0044H
	l	r0,	0f2d2h
	mov	r1,	#00h
	srlc	r0,	#06h
	sra	r1,	#06h
	l	r2,	0f2d3h
	mov	r3,	#00h
	sllc	r3,	#02h
	sll	r2,	#02h
	add	er2,	er0
	st	er2,	NEAR _UVReturn

;;		UVIndex = UVReturn*(0.04029)-12.49;
CLINEA 0000H 0001H 0137H 0003H 0025H
	mov	er0,	er2
	mov	er2,	#0 
	push	xr0
	add	sp,	#-4
	bl	__dildu8sw
	mov	r0,	#0a9h
	mov	r1,	#030h
	mov	r2,	#0b6h
	mov	r3,	#010h
	mov	r4,	#0e4h
	mov	r5,	#0a0h
	mov	r6,	#0a4h
	mov	r7,	#03fh
	push	qr0
	bl	__dmulu8sw
	add	sp,	#8 
	mov	r0,	#07bh
	mov	r1,	#014h
	mov	r2,	#0aeh
	mov	r3,	#047h
	mov	r4,	#0e1h
	mov	r5,	#0fah
	mov	r6,	#028h
	mov	r7,	#0c0h
	push	qr0
	bl	__daddu8sw
	add	sp,	#8 
	bl	__dtofu8sw
	add	sp,	#4 
	pop	xr0
	st	er0,	NEAR _UVIndex
	st	er2,	NEAR _UVIndex+02h

;;	    sprintf(SensorReturn,"UVI= %2.2f        ",UVIndex); 
CLINEA 0000H 0001H 0139H 0006H 0039H
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET $$S77
	mov	r1,	#BYTE2 OFFSET $$S77
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#12

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 013CH 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 013DH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 19, _funcUartFin);
CLINEA 0000H 0001H 013EH 0003H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#19
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 013FH 0001H 0002H
	bal	_$L118

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 013FH 0003H 001AH
_$L80 :
CBLOCK 193 12 319

;;			main_clrWDT();
CLINEA 0000H 0001H 0140H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 12 321

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 013FH 0001H 0002H
_$L118 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 013FH 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L80

;;	    SensorReturn[0] = 159; 
CLINEA 0000H 0001H 0143H 0006H 001CH
	mov	r0,	#09fh
	st	r0,	NEAR _SensorReturn

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0146H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0147H 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 1, _funcUartFin);
CLINEA 0000H 0001H 0148H 0003H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#1 
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0149H 0001H 0002H
	bal	_$L119

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0149H 0003H 001AH
_$L84 :
CBLOCK 193 13 329

;;			main_clrWDT();
CLINEA 0000H 0001H 014AH 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 13 331

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0149H 0001H 0002H
_$L119 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0149H 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L84

;;	    sprintf(SensorReturn,"[%d]",UVReturn); 
CLINEA 0000H 0001H 014DH 0006H 002CH
	l	er0,	NEAR _UVReturn
	push	er0
	mov	r0,	#BYTE1 OFFSET $$S86
	mov	r1,	#BYTE2 OFFSET $$S86
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#6 

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0150H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 0151H 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 19, _funcUartFin);
CLINEA 0000H 0001H 0152H 0003H 0031H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#19
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0153H 0001H 0002H
	bal	_$L120

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0153H 0003H 001AH
_$L89 :
CBLOCK 193 14 339

;;			main_clrWDT();
CLINEA 0000H 0001H 0154H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 14 341

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0153H 0001H 0002H
_$L120 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 0153H 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L89

;;		SensorReturn[0] = 128;    
CLINEA 0000H 0001H 0158H 0003H 001CH
	mov	r0,	#080h
	st	r0,	NEAR _SensorReturn

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 0159H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 015AH 0003H 000EH
	bl	_uart_stop

;;		uart_startSend(SensorReturn, 1, _funcUartFin);
CLINEA 0000H 0001H 015BH 0003H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#1 
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 015CH 0001H 0002H
	bal	_$L121

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 015CH 0003H 001AH
_$L93 :
CBLOCK 193 15 348

;;			main_clrWDT();
CLINEA 0000H 0001H 015DH 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 15 350

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 015CH 0001H 0002H
_$L121 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 015CH 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L93

;;		if(UV_Offset < UVReturn)
CLINEA 0000H 0001H 0160H 0003H 001AH
	l	er0,	NEAR _UV_Offset
	l	er2,	NEAR _UVReturn
	cmp	er0,	er2
	bge	_$L95
CBLOCK 193 16 353

;;			sprintf(SensorReturn," UV DETECTED     ",UVIndex); 
CLINEA 0000H 0001H 0163H 0004H 0036H
	l	er0,	NEAR _UVIndex
	l	er2,	NEAR _UVIndex+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET $$S97
	mov	r1,	#BYTE2 OFFSET $$S97
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#12

;;			_flgUartFin = 0;
CLINEA 0000H 0001H 0166H 0004H 0013H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;			uart_stop();
CLINEA 0000H 0001H 0167H 0004H 000FH
	bl	_uart_stop

;;			uart_startSend(SensorReturn, 15, _funcUartFin);
CLINEA 0000H 0001H 0168H 0004H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#15
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 0169H 0001H 0002H
	bal	_$L122

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 0169H 0004H 001BH
_$L100 :
CBLOCK 193 17 361

;;				main_clrWDT();
CLINEA 0000H 0001H 016AH 0005H 0012H
	bl	_main_clrWDT
CBLOCKEND 193 17 363

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 0169H 0001H 0002H
_$L122 :

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 0169H 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L100

;;		else
CLINEA 0000H 0001H 016DH 0003H 0006H
	bal	_$L105
_$L95 :
CBLOCK 193 18 366

;;			sprintf(SensorReturn," UV SENSOR DEMO ",UVIndex); 
CLINEA 0000H 0001H 016FH 0004H 0035H
	l	er0,	NEAR _UVIndex
	l	er2,	NEAR _UVIndex+02h
	push	xr0
	add	sp,	#-4
	bl	__ftodu8sw
	mov	r0,	#BYTE1 OFFSET $$S103
	mov	r1,	#BYTE2 OFFSET $$S103
	push	er0
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	push	er0
	bl	_sprintf_nn
	add	sp,	#12

;;			_flgUartFin = 0;
CLINEA 0000H 0001H 0171H 0004H 0013H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;			uart_stop();
CLINEA 0000H 0001H 0172H 0004H 000FH
	bl	_uart_stop

;;			uart_startSend(SensorReturn, 15, _funcUartFin);
CLINEA 0000H 0001H 0173H 0004H 0032H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#15
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 0174H 0001H 0002H
	bal	_$L123

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 0174H 0004H 001BH
_$L106 :
CBLOCK 193 19 372

;;				main_clrWDT();
CLINEA 0000H 0001H 0175H 0005H 0012H
	bl	_main_clrWDT
CBLOCKEND 193 19 374

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 0174H 0001H 0002H
_$L123 :

;;			while(_flgUartFin != 1){
CLINEA 0000H 0000H 0174H 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L106

;;			}
CLINEA 0000H 0000H 0176H 0004H 0004H
_$L105 :
CBLOCKEND 193 18 375

;;		SensorReturn[0]=148;
CLINEA 0000H 0001H 0179H 0003H 0016H
	mov	r0,	#094h
	st	r0,	NEAR _SensorReturn

;;		SensorReturn[1]= 0;
CLINEA 0000H 0001H 017AH 0003H 0015H
	mov	r0,	#00h
	st	r0,	NEAR _SensorReturn+01h

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 017CH 0003H 0012H
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 017DH 0003H 000EH
	bl	_uart_stop
CBLOCKEND 193 16 392

;;		uart_startSend(SensorReturn, 1, _funcUartFin);
CLINEA 0000H 0001H 017EH 0003H 0030H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#1 
	mov	r0,	#BYTE1 OFFSET _SensorReturn
	mov	r1,	#BYTE2 OFFSET _SensorReturn
	bl	_uart_startSend
	add	sp,	#2 

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 017FH 0001H 0002H
	bal	_$L124

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 017FH 0003H 001AH
_$L110 :
CBLOCK 193 20 383

;;			main_clrWDT();
CLINEA 0000H 0001H 0180H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 193 20 385

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 017FH 0001H 0002H
_$L124 :

;;		while(_flgUartFin != 1){
CLINEA 0000H 0000H 017FH 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L110

;;		HLT = 1;	//Confirmed that this works... tested using WDT = 8sec and it does take that much time to get back into the loop.
CLINEA 0000H 0001H 0183H 0003H 007CH
	sb	0f009h.0

;;		goto Loop;
CLINEA 0000H 0001H 0186H 0003H 000CH
	b	_$L72
CBLOCKEND 193 2 392

;;} 
CLINEA 0000H 0001H 0188H 0001H 0002H
CBLOCKEND 193 1 392
CFUNCTIONEND 193


	rseg $$main_clrWDT$main
CFUNCTION 179

_main_clrWDT	:
CBLOCK 179 1 429

;;{
CLINEA 0000H 0001H 01ADH 0001H 0001H
CBLOCK 179 2 429

;;	do {
CLINEA 0000H 0001H 01B0H 0002H 0005H
_$L128 :
CBLOCK 179 3 432

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 01B1H 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 179 3 434

;;	} while (WDP != 1);
CLINEA 0000H 0000H 01B2H 0002H 0014H
	tb	0f00eh.0
	beq	_$L128

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 01B3H 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 179 2 436

;;}
CLINEA 0000H 0001H 01B4H 0001H 0001H
	rt
CBLOCKEND 179 1 436
CFUNCTIONEND 179


	rseg $$Initialization$main
CFUNCTION 180

_Initialization	:
CBLOCK 180 1 441

;;static void Initialization(void){
CLINEA 0000H 0001H 01B9H 0001H 0021H
	push	lr
CBLOCK 180 2 441
CRET 0000H

;;	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 01BDH 0002H 0045H
	sb	0f02ah.0

;;	DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 01BEH 0002H 0042H
	rb	0f02ah.2

;;	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
CLINEA 0000H 0001H 01BFH 0002H 0032H
	sb	0f02ah.3

;;	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 01C0H 0002H 0045H
	sb	0f02ah.6

;;	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
CLINEA 0000H 0001H 01C1H 0002H 0047H
	rb	0f02ah.7

;;	BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 01C3H 0002H 0026H
	mov	r0,	#00h
	st	r0,	0f02ch

;;	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 01C4H 0002H 0052H
	st	r0,	0f02eh

;;	BLKCON7 = 0x0F; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 01C5H 0002H 0058H
	mov	r0,	#0fh
	st	r0,	0f02fh

;;	PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
CLINEA 0000H 0001H 01C8H 0002H 003CH
	bl	_PortA_Low

;;	PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
CLINEA 0000H 0001H 01C9H 0002H 003CH
	bl	_PortB_Low

;;	PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
CLINEA 0000H 0001H 01CAH 0002H 003CH
	bl	_PortC_Low

;;	PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low
CLINEA 0000H 0001H 01CBH 0002H 003CH
	bl	_PortD_Low

;;	PA2DIR = 0;		
CLINEA 0000H 0001H 01D0H 0002H 000EH
	rb	0f251h.2

;;	PA2C0 = 1;		
CLINEA 0000H 0001H 01D1H 0002H 000DH
	sb	0f252h.2

;;	PA2C1 = 1;		
CLINEA 0000H 0001H 01D2H 0002H 000DH
	sb	0f253h.2

;;	PA2MD0 = 0;
CLINEA 0000H 0001H 01D3H 0002H 000CH
	rb	0f254h.2

;;	PA2MD1 = 0;
CLINEA 0000H 0001H 01D4H 0002H 000CH
	rb	0f255h.2

;;	PA2D = 1;
CLINEA 0000H 0001H 01D5H 0002H 000AH
	sb	0f250h.2

;;	PA1DIR = 1;		//GPIO Input
CLINEA 0000H 0001H 01D8H 0002H 001AH
	sb	0f251h.1

;;	SACH1 = 1;		//This enables the ADC Channel 1 from the corrected pin
CLINEA 0000H 0001H 01D9H 0002H 0044H
	sb	0f2f2h.1

;;	SALP = 0;		//Single Read or Continuous Read... Single = 0, Consecutive = 1
CLINEA 0000H 0001H 01DAH 0002H 004BH
	rb	0f2f0h.0

;;    SetOSC();
CLINEA 0000H 0001H 01DDH 0005H 000DH
	bl	_SetOSC

;;	irq_di();	// Disable Interrupts
CLINEA 0000H 0001H 01E1H 0002H 0020H
	bl	_irq_di

;;	irq_init();	// Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 01E2H 0002H 003FH
	bl	_irq_init

;;	IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
CLINEA 0000H 0001H 01E5H 0002H 0033H
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
CLINEA 0000H 0001H 01E7H 0002H 003BH
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;	E2H = 0;	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
CLINEA 0000H 0001H 01E9H 0002H 0045H
	rb	0f017h.3

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
CLINEA 0000H 0001H 01EBH 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0fh
	bl	_irq_setHdr

;;	EUA0 = 1; 	// EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 01ECH 0002H 004AH
	sb	0f014h.0

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
CLINEA 0000H 0001H 01EEH 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#0ch
	bl	_irq_setHdr

;;	EI2CM = 1;
CLINEA 0000H 0001H 01EFH 0002H 000BH
	sb	0f012h.7

;;	QI2CM = 0;
CLINEA 0000H 0001H 01F0H 0002H 000BH
	rb	0f01ah.7

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_SADINT, _intADC );
CLINEA 0000H 0001H 01F3H 0002H 003BH
	mov	r2,	#BYTE1 OFFSET __intADC
	mov	r3,	#BYTE2 OFFSET __intADC
	mov	r0,	#0ah
	bl	_irq_setHdr

;;	ESAD = 1;
CLINEA 0000H 0001H 01F4H 0002H 000AH
	sb	0f012h.2

;;	QSAD = 0;
CLINEA 0000H 0001H 01F5H 0002H 000AH
	rb	0f01ah.2

;;	irq_ei(); // Enable Interrupts
CLINEA 0000H 0001H 0201H 0002H 001FH
	bl	_irq_ei

;;	WDTMOD = 0x01; 	
CLINEA 0000H 0001H 020DH 0002H 0011H
	mov	r0,	#01h
	st	r0,	0f00fh

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 020EH 0002H 001DH
	bl	_main_clrWDT

;;	HelloWorld[12] 	= 0x0D;
CLINEA 0000H 0001H 0211H 0002H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0ch

;;	HelloWorld[13] 	= 0x0A;
CLINEA 0000H 0001H 0212H 0002H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _HelloWorld+0dh

;;	HelloWorld[10] = 17;
CLINEA 0000H 0001H 0213H 0002H 0015H
	mov	r0,	#011h
	st	r0,	NEAR _HelloWorld+0ah

;;	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
CLINEA 0000H 0001H 0219H 0002H 0045H
	mov	r0,	#00h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#01h
	bl	_i2c_init
	add	sp,	#2 

;;			     &_uartSetParam );						/* Param... 	 */
CLINEA 0000H 0001H 021EH 0009H 002FH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;	uart_PortSet();
CLINEA 0000H 0001H 021FH 0002H 0010H
	bl	_uart_PortSet

;;	HelloWorld[15] = 13;
CLINEA 0000H 0001H 0221H 0002H 0015H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0fh

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 0222H 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();	
CLINEA 0000H 0001H 0223H 0002H 000EH
	bl	_uart_stop

;;	uart_startSend(HelloWorld, 16, _funcUartFin); // Send, "Hello World!"
CLINEA 0000H 0001H 0224H 0002H 0046H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#16
	mov	r0,	#BYTE1 OFFSET _HelloWorld
	mov	r1,	#BYTE2 OFFSET _HelloWorld
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0225H 0001H 0015H
	bal	_$L135

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0225H 0002H 0019H
_$L133 :
CBLOCK 180 3 549

;;		main_clrWDT();
CLINEA 0000H 0001H 0226H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 180 3 551

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0225H 0001H 0015H
_$L135 :

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 0225H 0012H 001CH
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L133
CBLOCKEND 180 2 553

;;}//End Initialization
CLINEA 0000H 0001H 0229H 0001H 0015H
	pop	pc
CBLOCKEND 180 1 553
CFUNCTIONEND 180


	rseg $$_funcUartFin$main
CFUNCTION 186

__funcUartFin	:
CBLOCK 186 1 565

;;{
CLINEA 0000H 0001H 0235H 0001H 0001H
	push	lr
CBLOCK 186 2 565
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0236H 0002H 0054H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0237H 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 0238H 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 186 2 569

;;}
CLINEA 0000H 0001H 0239H 0001H 0001H
	pop	pc
CBLOCKEND 186 1 569
CFUNCTIONEND 186


	rseg $$_funcI2CFin$main
CFUNCTION 187

__funcI2CFin	:
CBLOCK 187 1 580

;;{
CLINEA 0000H 0001H 0244H 0001H 0001H
	push	lr
CBLOCK 187 2 580
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0245H 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 0246H 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 0247H 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 187 2 584

;;}
CLINEA 0000H 0001H 0248H 0001H 0001H
	pop	pc
CBLOCKEND 187 1 584
CFUNCTIONEND 187


	rseg $$_intI2c$main
CFUNCTION 190

__intI2c	:
CBLOCK 190 1 594

;;{
CLINEA 0000H 0001H 0252H 0001H 0001H
	push	lr
CBLOCK 190 2 594
CRET 0000H

;;	(void)i2c_continue();
CLINEA 0000H 0001H 0253H 0002H 0016H
	bl	_i2c_continue

;;	main_reqNotHalt();
CLINEA 0000H 0001H 0254H 0002H 0013H
	bl	_main_reqNotHalt
CBLOCKEND 190 2 597

;;}
CLINEA 0000H 0001H 0255H 0001H 0001H
	pop	pc
CBLOCKEND 190 1 597
CFUNCTIONEND 190


	rseg $$_intADC$main
CFUNCTION 191

__intADC	:
CBLOCK 191 1 607

;;{
CLINEA 0000H 0001H 025FH 0001H 0001H
CBLOCK 191 2 607

;;	_flgADCFin = 1;
CLINEA 0000H 0001H 0260H 0002H 0010H
	mov	r0,	#01h
	st	r0,	NEAR __flgADCFin
CBLOCKEND 191 2 609

;;}
CLINEA 0000H 0001H 0261H 0001H 0001H
	rt
CBLOCKEND 191 1 609
CFUNCTIONEND 191


	rseg $$main_reqNotHalt$main
CFUNCTION 188

_main_reqNotHalt	:
CBLOCK 188 1 619

;;{
CLINEA 0000H 0001H 026BH 0001H 0001H
CBLOCK 188 2 619

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 026CH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 188 2 621

;;}
CLINEA 0000H 0001H 026DH 0001H 0001H
	rt
CBLOCKEND 188 1 621
CFUNCTIONEND 188


	rseg $$_intUart$main
CFUNCTION 189

__intUart	:
CBLOCK 189 1 631

;;{
CLINEA 0000H 0001H 0277H 0001H 0001H
CBLOCK 189 2 631

;;	uart_continue(); 	//in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 0278H 0002H 0047H
	b	_uart_continue
CBLOCKEND 189 2 633
CLINEA 0000H 0001H 0279H 0001H 0001H
CBLOCKEND 189 1 633
CFUNCTIONEND 189


	rseg $$SetOSC$main
CFUNCTION 181

_SetOSC	:
CBLOCK 181 1 638

;;static void SetOSC(void){
CLINEA 0000H 0001H 027EH 0001H 0019H
CBLOCK 181 2 638

;;	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 0281H 0002H 004AH
	rb	0f002h.0

;;	SYSC1 = 0;
CLINEA 0000H 0001H 0282H 0002H 000BH
	rb	0f002h.1

;;	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 0284H 0002H 0034H
	sb	0f002h.3

;;	OSCM0 = 0;
CLINEA 0000H 0001H 0285H 0002H 000BH
	rb	0f002h.2

;;	ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 0287H 0002H 0031H
	sb	0f003h.1

;;	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 0288H 0002H 0022H
	sb	0f003h.0

;;	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 028AH 0002H 0045H
	sb	0f003h.7

;;	__EI();			//INT enable
CLINEA 0000H 0001H 028CH 0002H 0017H
	ei
CBLOCKEND 181 2 653

;;}
CLINEA 0000H 0001H 028DH 0001H 0001H
	rt
CBLOCKEND 181 1 653
CFUNCTIONEND 181


	rseg $$PortA_Low$main
CFUNCTION 182

_PortA_Low	:
CBLOCK 182 1 659

;;void PortA_Low(void){
CLINEA 0000H 0001H 0293H 0001H 0015H
CBLOCK 182 2 659

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 029DH 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 029EH 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 029FH 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 02A2H 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 02A3H 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 02A4H 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 02A5H 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 02A6H 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 02A7H 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 02AAH 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 02ABH 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 02ACH 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 02ADH 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 02AEH 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 02AFH 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 02B2H 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 02B3H 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 02B4H 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 02B6H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 182 2 695
CLINEA 0000H 0001H 02B7H 0001H 0001H
CBLOCKEND 182 1 695
CFUNCTIONEND 182


	rseg $$PortB_Low$main
CFUNCTION 183

_PortB_Low	:
CBLOCK 183 1 701

;;void PortB_Low(void){
CLINEA 0000H 0001H 02BDH 0001H 0015H
CBLOCK 183 2 701

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 02C7H 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 02C8H 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 02C9H 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 02CAH 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 02CBH 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 02CCH 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 02CDH 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 02CEH 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 02D1H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 02D2H 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 02D3H 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 02D4H 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 02D5H 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 02D6H 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 02D7H 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 02D8H 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 02D9H 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 02DAH 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 02DBH 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 02DCH 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 02DDH 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 02DEH 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 02DFH 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 02E0H 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 02E3H 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 02E4H 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 02E5H 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 02E6H 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 02E7H 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 02E8H 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 02E9H 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 02EAH 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 02EBH 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 02ECH 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 02EDH 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 02EEH 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 02EFH 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 02F0H 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 02F1H 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 02F2H 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 02F5H 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 02F6H 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 02F7H 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 02F8H 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 02F9H 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 02FAH 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 02FBH 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 02FCH 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 02FEH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 183 2 767
CLINEA 0000H 0001H 02FFH 0001H 0001H
CBLOCKEND 183 1 767
CFUNCTIONEND 183


	rseg $$PortC_Low$main
CFUNCTION 184

_PortC_Low	:
CBLOCK 184 1 773

;;void PortC_Low(void){
CLINEA 0000H 0001H 0305H 0001H 0015H
CBLOCK 184 2 773

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 030FH 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 0310H 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 0311H 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 0312H 0002H 0031H
	rb	0f261h.3

;;	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
CLINEA 0000H 0001H 0313H 0002H 0031H
	rb	0f261h.4

;;	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
CLINEA 0000H 0001H 0314H 0002H 0031H
	rb	0f261h.5

;;	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
CLINEA 0000H 0001H 0315H 0002H 0031H
	rb	0f261h.6

;;	PC7DIR = 0;		// PortC Bit7 set to Output Mode...
CLINEA 0000H 0001H 0316H 0002H 0031H
	rb	0f261h.7

;;	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
CLINEA 0000H 0001H 0319H 0002H 003BH
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 031AH 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
CLINEA 0000H 0001H 031BH 0002H 003BH
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 031CH 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
CLINEA 0000H 0001H 031DH 0002H 003BH
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 031EH 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
CLINEA 0000H 0001H 031FH 0002H 003BH
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 0320H 0002H 000EH
	sb	0f262h.3

;;	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
CLINEA 0000H 0001H 0321H 0002H 003BH
	sb	0f263h.4

;;	PC4C0  = 1;	
CLINEA 0000H 0001H 0322H 0002H 000DH
	sb	0f262h.4

;;	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
CLINEA 0000H 0001H 0323H 0002H 003BH
	sb	0f263h.5

;;	PC5C0  = 1;	
CLINEA 0000H 0001H 0324H 0002H 000DH
	sb	0f262h.5

;;	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
CLINEA 0000H 0001H 0325H 0002H 003BH
	sb	0f263h.6

;;	PC6C0  = 1;	
CLINEA 0000H 0001H 0326H 0002H 000DH
	sb	0f262h.6

;;	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
CLINEA 0000H 0001H 0327H 0002H 003BH
	sb	0f263h.7

;;	PC7C0  = 1;	
CLINEA 0000H 0001H 0328H 0002H 000DH
	sb	0f262h.7

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 032BH 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 032CH 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 032DH 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 032EH 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 032FH 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 0330H 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 0331H 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 0332H 0002H 000EH
	rb	0f264h.3

;;	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 0333H 0002H 003CH
	rb	0f265h.4

;;	PC4MD0  = 0;	
CLINEA 0000H 0001H 0334H 0002H 000EH
	rb	0f264h.4

;;	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 0335H 0002H 003CH
	rb	0f265h.5

;;	PC5MD0  = 0;
CLINEA 0000H 0001H 0336H 0002H 000DH
	rb	0f264h.5

;;	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 0337H 0002H 003CH
	rb	0f265h.6

;;	PC6MD0  = 0;	
CLINEA 0000H 0001H 0338H 0002H 000EH
	rb	0f264h.6

;;	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 0339H 0002H 003CH
	rb	0f265h.7

;;	PC7MD0  = 0;
CLINEA 0000H 0001H 033AH 0002H 000DH
	rb	0f264h.7

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 033DH 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 033EH 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 033FH 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 0340H 0002H 0021H
	rb	0f260h.3

;;	PC4D = 0;		// C.4 Output OFF....
CLINEA 0000H 0001H 0341H 0002H 0021H
	rb	0f260h.4

;;	PC5D = 0;		// C.5 Output OFF....
CLINEA 0000H 0001H 0342H 0002H 0021H
	rb	0f260h.5

;;	PC6D = 0;		// C.6 Output OFF....
CLINEA 0000H 0001H 0343H 0002H 0021H
	rb	0f260h.6

;;	PC7D = 0;		// C.7 Output OFF....
CLINEA 0000H 0001H 0344H 0002H 0021H
	rb	0f260h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0346H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 184 2 840
CLINEA 0000H 0001H 0348H 0001H 0001H
CBLOCKEND 184 1 840
CFUNCTIONEND 184


	rseg $$PortD_Low$main
CFUNCTION 185

_PortD_Low	:
CBLOCK 185 1 846

;;void PortD_Low(void){
CLINEA 0000H 0001H 034EH 0001H 0015H
CBLOCK 185 2 846

;;	PD0DIR = 0;		// PortD Bit0 set to Output Mode...
CLINEA 0000H 0001H 0357H 0002H 0031H
	rb	0f269h.0

;;	PD1DIR = 0;		// PortD Bit1 set to Output Mode...
CLINEA 0000H 0001H 0358H 0002H 0031H
	rb	0f269h.1

;;	PD2DIR = 0;		// PortD Bit2 set to Output Mode...
CLINEA 0000H 0001H 0359H 0002H 0031H
	rb	0f269h.2

;;	PD3DIR = 0;		// PortD Bit3 set to Output Mode...
CLINEA 0000H 0001H 035AH 0002H 0031H
	rb	0f269h.3

;;	PD4DIR = 0;		// PortD Bit4 set to Output Mode...
CLINEA 0000H 0001H 035BH 0002H 0031H
	rb	0f269h.4

;;	PD5DIR = 0;		// PortD Bit5 set to Output Mode...
CLINEA 0000H 0001H 035CH 0002H 0031H
	rb	0f269h.5

;;	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
CLINEA 0000H 0001H 035FH 0002H 002FH
	sb	0f26bh.0

;;	PD0C0= 1;		
CLINEA 0000H 0001H 0360H 0002H 000CH
	sb	0f26ah.0

;;	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0361H 0002H 002FH
	sb	0f26bh.1

;;	PD1C0= 1;	
CLINEA 0000H 0001H 0362H 0002H 000BH
	sb	0f26ah.1

;;	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0363H 0002H 002FH
	sb	0f26bh.2

;;	PD2C0= 1;	
CLINEA 0000H 0001H 0364H 0002H 000BH
	sb	0f26ah.2

;;	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
CLINEA 0000H 0001H 0365H 0002H 002FH
	sb	0f26bh.3

;;	PD3C0= 1;		
CLINEA 0000H 0001H 0366H 0002H 000CH
	sb	0f26ah.3

;;	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
CLINEA 0000H 0001H 0367H 0002H 002FH
	sb	0f26bh.4

;;	PD4C0= 1;	
CLINEA 0000H 0001H 0368H 0002H 000BH
	sb	0f26ah.4

;;	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
CLINEA 0000H 0001H 0369H 0002H 002FH
	sb	0f26bh.5

;;	PD5C0= 1;	
CLINEA 0000H 0001H 036AH 0002H 000BH
	sb	0f26ah.5

;;	PD0D = 0;		// D.0 Output OFF....
CLINEA 0000H 0001H 036DH 0002H 0021H
	rb	0f268h.0

;;	PD1D = 0;		// D.1 Output OFF....
CLINEA 0000H 0001H 036EH 0002H 0021H
	rb	0f268h.1

;;	PD2D = 0;		// D.2 Output OFF....
CLINEA 0000H 0001H 036FH 0002H 0021H
	rb	0f268h.2

;;	PD3D = 0;		// D.3 Output OFF....
CLINEA 0000H 0001H 0370H 0002H 0021H
	rb	0f268h.3

;;	PD4D = 0;		// D.4 Output OFF....
CLINEA 0000H 0001H 0371H 0002H 0021H
	rb	0f268h.4

;;	PD5D = 0;		// D.5 Output OFF....
CLINEA 0000H 0001H 0372H 0002H 0021H
	rb	0f268h.5

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0374H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 185 2 885
CLINEA 0000H 0001H 0375H 0001H 0001H
CBLOCKEND 185 1 885
CFUNCTIONEND 185


	rseg $$NOPms$main
CFUNCTION 192

_NOPms	:
CBLOCK 192 1 900

;;{
CLINEA 0000H 0001H 0384H 0001H 0001H
	push	lr
	push	xr4
	push	bp
	push	er8
	mov	er8,	er0
CBLOCK 192 2 900
CRET 0008H
CARGUMENT 46H 0002H 0028H "ms" 02H 00H 01H
CLOCAL 46H 0002H 002AH 0002H "timerThres" 02H 00H 01H
CLOCAL 46H 0001H 001AH 0002H "TimeFlag" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "TempSec" 02H 00H 01H
CLOCAL 46H 0002H 0024H 0002H "timer" 02H 00H 01H
CLOCAL 4AH 0002H 0000H 0002H "timertest" 02H 00H 01H

;;	TempSec = ms;
CLINEA 0000H 0001H 038BH 0002H 000EH
	mov	er4,	er0

;;	TimeFlag = 0;
CLINEA 0000H 0001H 038CH 0002H 000EH
	mov	r6,	#00h

;;	tm_init(TM_CH_NO_AB);
CLINEA 0000H 0001H 038EH 0002H 0016H
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
CLINEA 0000H 0001H 0392H 0002H 000EH
	mov	er0,	er8
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bge	_$L148
CBLOCK 192 3 914

;;		timerThres = 0x1FF * ms;
CLINEA 0000H 0001H 0393H 0003H 001AH
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r8
	subc	r1,	r9
	mov	bp,	er0

;;		TimeFlag = 0;
CLINEA 0000H 0001H 0394H 0003H 000FH
CBLOCKEND 192 3 917

;;	}
CLINEA 0000H 0000H 0395H 0002H 0002H
_$L148 :

;;	if(ms == 128){
CLINEA 0000H 0001H 0396H 0002H 000FH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	bne	_$L150
CBLOCK 192 4 918

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 0397H 0003H 0016H
	mov	bp,	#-1

;;		TimeFlag = 0;
CLINEA 0000H 0001H 0398H 0003H 000FH
	mov	r6,	#00h
CBLOCKEND 192 4 921

;;	}
CLINEA 0000H 0000H 0399H 0002H 0002H
_$L150 :

;;	if(ms > 128){
CLINEA 0000H 0001H 039AH 0002H 000EH
	cmp	r8,	#080h
	cmpc	r9,	#00h
	ble	_$L160
CBLOCK 192 5 922

;;		while(TempSec > 128){
CLINEA 0000H 0000H 039BH 0001H 0001H
	bal	_$L170

;;		while(TempSec > 128){
CLINEA 0000H 0000H 039BH 0003H 0017H
_$L156 :
CBLOCK 192 6 923

;;			TempSec -= 128;
CLINEA 0000H 0001H 039CH 0004H 0012H
	add	r0,	#080h
	addc	r1,	#0ffh
	mov	er4,	er0

;;			TimeFlag++;
CLINEA 0000H 0000H 039DH 0004H 000EH
	add	r6,	#01h
CBLOCKEND 192 6 926

;;		while(TempSec > 128){
CLINEA 0000H 0000H 039BH 0001H 0001H
_$L170 :

;;		while(TempSec > 128){
CLINEA 0000H 0000H 039BH 0012H 001CH
	mov	er0,	er4
	cmp	r4,	#080h
	cmpc	r5,	#00h
	bgt	_$L156

;;		if(TempSec != 0){
CLINEA 0000H 0001H 039FH 0003H 0013H
	mov	er4,	er4
	beq	_$L158
CBLOCK 192 7 927

;;			timerThres = 0x1FF * TempSec;
CLINEA 0000H 0001H 03A0H 0004H 0020H
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r1,	#02h
	sll	r0,	#02h
	sub	r0,	r4
	subc	r1,	r5
	mov	bp,	er0
CBLOCKEND 192 7 929

;;		else{
CLINEA 0000H 0001H 03A2H 0003H 0007H
	bal	_$L160
_$L158 :
CBLOCK 192 8 930

;;			timerThres = 0xFFFF;
CLINEA 0000H 0001H 03A3H 0004H 0017H
	mov	bp,	#-1

;;			TimeFlag--;
CLINEA 0000H 0000H 03A4H 0004H 000EH
	add	r6,	#0ffh
CBLOCKEND 192 8 933

;;		}
CLINEA 0000H 0000H 03A5H 0003H 0003H
_$L160 :
CBLOCKEND 192 5 934

;;	main_clrWDT();	
CLINEA 0000H 0001H 03A9H 0002H 0010H
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
CLINEA 0000H 0001H 03ADH 0002H 001BH
	bal	_$L163
_$L165 :
CBLOCK 192 9 941

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
CLINEA 0000H 0000H 03AEH 0003H 001CH
CBLOCKEND 192 9 944

;;	}
CLINEA 0000H 0000H 03B0H 0002H 0002H
_$L163 :

;;	while(timer < timerThres){
CLINEA 0000H 0000H 03ADH 0012H 001CH
	cmp	er0,	bp
	blt	_$L165

;;	if(TimeFlag !=0){
CLINEA 0000H 0001H 03B1H 0002H 0012H
	cmp	r6,	#00h
	beq	_$L168

;;		tm_stopAB();
CLINEA 0000H 0001H 0105H 0002H 000BH
	rb	0f8ebh.0

;;		TimeFlag--;
CLINEA 0000H 0000H 03B3H 0003H 000DH
	add	r6,	#0ffh

;;		timerThres = 0xFFFF;
CLINEA 0000H 0001H 03B4H 0003H 0016H
	mov	bp,	#-1

;;		goto TimerRestart;
CLINEA 0000H 0001H 03B5H 0003H 0014H
	bal	_$L160

;;	}
CLINEA 0000H 0000H 03B6H 0002H 0002H
_$L168 :
CBLOCKEND 192 2 951

;;}
CLINEA 0000H 0001H 03B7H 0001H 0001H
	pop	er8
	pop	bp
	pop	xr4
	pop	pc
CBLOCKEND 192 1 951
CFUNCTIONEND 192

	public _NOPms
	public _main_clrWDT
	public _main_reqNotHalt
	public _main
	public _PortD_Low
	public _PortC_Low
	public _PortB_Low
	public _PortA_Low
	__flgUartFin comm data 01h #00h
	_testI2C comm data 02h #00h
	_ret comm data 02h #00h
	__flgI2CFin comm data 01h #00h
	__reqNotHalt comm data 01h #00h
	__flgADCFin comm data 01h #00h
	extrn code near : _irq_init
	extrn code near : _uart_PortSet
	extrn code near : _uart_init
	extrn code near : _i2c_continue
	extrn code near : _irq_di
	extrn code near : _irq_ei
	extrn code near : _irq_setHdr
	extrn code near : _sprintf_nn
	extrn code near : _uart_stop
	extrn code near : _uart_startSend
	extrn code near : _uart_continue
	extrn code near : _i2c_init
	extrn code near : _tm_init
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

	rseg $$NINITTAB
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

	rseg $$TAB$$S63$main
$$S63 :
	DB	"UV SENSOR DEMO", 00H

	rseg $$TAB$$S77$main
$$S77 :
	DB	"UVI= %2.2f        ", 00H

	rseg $$TAB$$S86$main
$$S86 :
	DB	"[%d]", 00H

	rseg $$TAB$$S97$main
$$S97 :
	DB	" UV DETECTED     ", 00H

	rseg $$TAB$$S103$main
$$S103 :
	DB	" UV SENSOR DEMO ", 00H

	rseg $$NINITVAR
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
_SensorReturn :
	ds	032h
_UVIndex :
	ds	04h
_UV_Offset :
	ds	02h
	extrn code : __ftodu8sw
	extrn code : __daddu8sw
	extrn code : __dmulu8sw
	extrn code : __dildu8sw
	extrn code : __dtofu8sw

	end
