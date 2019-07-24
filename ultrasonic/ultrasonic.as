opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 5 "C:\Users\JOPHIN\Documents\pic\ultrasonic\ultrasonic.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "C:\Users\JOPHIN\Documents\pic\ultrasonic\ultrasonic.c"
	dw 0X1932 ;#
	FNCALL	_main,_adc_init
	FNCALL	_main,_adc_read
	FNCALL	_main,_adc_res
	FNCALL	_main,___lwtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftge
	FNCALL	_adc_init,_DelayMs
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	global	_d
	global	_ADCON0
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_ADGO
_ADGO	set	250
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	file	"ultrasonic.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_d:
       ds      3

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	?_adc_init
?_adc_init:	; 0 bytes @ 0x0
	global	?_adc_read
?_adc_read:	; 0 bytes @ 0x0
	global	??_adc_read
??_adc_read:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?_adc_res
?_adc_res:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	global	adc_read@ch
adc_read@ch:	; 1 bytes @ 0x1
	ds	1
	global	??_adc_res
??_adc_res:	; 0 bytes @ 0x2
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	global	adc_read@_dcnt
adc_read@_dcnt:	; 1 bytes @ 0x2
	ds	1
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	??_adc_init
??_adc_init:	; 0 bytes @ 0x4
	global	adc_res@_dcnt
adc_res@_dcnt:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	ds	2
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x8
	ds	3
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xB
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x0
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x0
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x4
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x5
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x5
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x8
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x8
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x9
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x9
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 3, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     13      16
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?_adc_res	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___ftmul
;;   _main->___ftdiv
;;   _adc_init->_DelayMs
;;   ___lwtoft->___ftpack
;;   ___ftmul->___ftpack
;;   ___ftdiv->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftmul
;;   _main->___ftdiv
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    1527
;;                                             10 BANK0      3     3      0
;;                           _adc_init
;;                           _adc_read
;;                            _adc_res
;;                           ___lwtoft
;;                            ___ftmul
;;                            ___ftdiv
;;                             ___ftge
;; ---------------------------------------------------------------------------------
;; (1) _adc_init                                             0     0      0      68
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) ___lwtoft                                             4     1      3     231
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;;                            _adc_res (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             16    10      6     535
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0     10    10      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             16    10      6     489
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0     10    10      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) _adc_res                                              5     3      2      23
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (1) _adc_read                                             3     3      0      45
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      68
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                              12     6      6     136
;;                                              0 COMMON    12     6      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _adc_init
;;     _DelayMs
;;   _adc_read
;;   _adc_res
;;   ___lwtoft
;;     ___ftpack
;;     _adc_res (ARG)
;;   ___ftmul
;;     ___ftpack
;;   ___ftdiv
;;     ___ftpack
;;   ___ftge
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      1E       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      D      10       5       20.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      20      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 8 in file "C:\Users\JOPHIN\Documents\pic\ultrasonic\ultrasonic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_adc_init
;;		_adc_read
;;		_adc_res
;;		___lwtoft
;;		___ftmul
;;		___ftdiv
;;		___ftge
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\JOPHIN\Documents\pic\ultrasonic\ultrasonic.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	9
	
l2225:	
;ultrasonic.c: 9: TRISB1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	10
;ultrasonic.c: 10: TRISB0=1;
	bsf	(1072/8)^080h,(1072)&7
	line	11
;ultrasonic.c: 11: TRISB2=0;
	bcf	(1074/8)^080h,(1074)&7
	line	12
	
l2227:	
;ultrasonic.c: 12: adc_init();
	fcall	_adc_init
	goto	l2229
	line	13
;ultrasonic.c: 13: while(1)
	
l593:	
	line	16
	
l2229:	
;ultrasonic.c: 14: {
;ultrasonic.c: 16: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	17
	
l2231:	
;ultrasonic.c: 17: _delay((unsigned long)((1000)*(16000000/4000.0)));
	opt asmopt_off
movlw  21
movwf	((??_main+0)+0+2),f
movlw	55
movwf	((??_main+0)+0+1),f
	movlw	202
movwf	((??_main+0)+0),f
u3037:
	decfsz	((??_main+0)+0),f
	goto	u3037
	decfsz	((??_main+0)+0+1),f
	goto	u3037
	decfsz	((??_main+0)+0+2),f
	goto	u3037
	nop2
opt asmopt_on

	line	18
	
l2233:	
;ultrasonic.c: 18: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	19
	
l2235:	
;ultrasonic.c: 19: _delay((unsigned long)((1000)*(16000000/4000.0)));
	opt asmopt_off
movlw  21
movwf	((??_main+0)+0+2),f
movlw	55
movwf	((??_main+0)+0+1),f
	movlw	202
movwf	((??_main+0)+0),f
u3047:
	decfsz	((??_main+0)+0),f
	goto	u3047
	decfsz	((??_main+0)+0+1),f
	goto	u3047
	decfsz	((??_main+0)+0+2),f
	goto	u3047
	nop2
opt asmopt_on

	line	20
	
l2237:	
;ultrasonic.c: 20: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	21
	
l2239:	
;ultrasonic.c: 21: RB0=1;
	bsf	(48/8),(48)&7
	line	22
;ultrasonic.c: 22: adc_read(0);
	movlw	(0)
	fcall	_adc_read
	line	23
	
l2241:	
;ultrasonic.c: 23: d=adc_res();
	fcall	_adc_res
	movf	(1+(?_adc_res)),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(0+(?_adc_res)),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_d)
	movf	(1+(?___lwtoft)),w
	movwf	(_d+1)
	movf	(2+(?___lwtoft)),w
	movwf	(_d+2)
	line	24
	
l2243:	
;ultrasonic.c: 24: d=d*0.034/2;
	movlw	0x44
	movwf	(?___ftmul)
	movlw	0xb
	movwf	(?___ftmul+1)
	movlw	0x3d
	movwf	(?___ftmul+2)
	movf	(_d),w
	movwf	0+(?___ftmul)+03h
	movf	(_d+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_d+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_d)
	movf	(1+(?___ftmul)),w
	movwf	(_d+1)
	movf	(2+(?___ftmul)),w
	movwf	(_d+2)
	
l2245:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x40
	movwf	(?___ftdiv+2)
	movf	(_d),w
	movwf	0+(?___ftdiv)+03h
	movf	(_d+1),w
	movwf	1+(?___ftdiv)+03h
	movf	(_d+2),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_d)
	movf	(1+(?___ftdiv)),w
	movwf	(_d+1)
	movf	(2+(?___ftdiv)),w
	movwf	(_d+2)
	line	25
	
l2247:	
;ultrasonic.c: 25: if(d<20)
	movf	(_d),w
	movwf	(?___ftge)
	movf	(_d+1),w
	movwf	(?___ftge+1)
	movf	(_d+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xa0
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3021
	goto	u3020
u3021:
	goto	l594
u3020:
	line	27
	
l2249:	
;ultrasonic.c: 26: {
;ultrasonic.c: 27: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	28
;ultrasonic.c: 28: }
	goto	l2229
	line	29
	
l594:	
	line	31
;ultrasonic.c: 29: else
;ultrasonic.c: 30: {
;ultrasonic.c: 31: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	goto	l2229
	line	32
	
l595:	
	goto	l2229
	line	33
	
l596:	
	line	13
	goto	l2229
	
l597:	
	line	34
	
l598:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_adc_init
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function _adc_init *****************
;; Defined at:
;;		line 11 in file "C:\Users\JOPHIN\Documents\pic\ultrasonic\adc_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text245
	file	"C:\Users\JOPHIN\Documents\pic\ultrasonic\adc_driver.c"
	line	11
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
	opt	stack 6
; Regs used in _adc_init: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2221:	
;adc_driver.c: 12: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	13
	
l2223:	
;adc_driver.c: 13: ADCON1 = 0x82;
	movlw	(082h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	14
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
;; =============== function _adc_init ends ============

	signat	_adc_init,88
	global	___lwtoft
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text246
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 6
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2217:	
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l830
	
l2219:	
	line	31
	
l830:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___ftmul
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3    5[BANK0 ] unsigned um
;;  sign            1    9[BANK0 ] unsigned char 
;;  cntr            1    8[BANK0 ] unsigned char 
;;  exp             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text247
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2167:	
	movf	(___ftmul@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l2173
u2880:
	line	57
	
l2169:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l706
	
l2171:	
	goto	l706
	
l705:	
	line	58
	
l2173:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l2179
u2890:
	line	59
	
l2175:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l706
	
l2177:	
	goto	l706
	
l707:	
	line	60
	
l2179:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u2905:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2900:
	addlw	-1
	skipz
	goto	u2905
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u2915:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2910:
	addlw	-1
	skipz
	goto	u2915
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l2181:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l2183:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l2185:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l2187:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l2189:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2191
	line	70
	
l708:	
	line	71
	
l2191:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l2195
u2920:
	line	72
	
l2193:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2931
	addwf	(___ftmul@f3_as_product+1),f
u2931:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2932
	addwf	(___ftmul@f3_as_product+2),f
u2932:

	goto	l2195
	
l709:	
	line	73
	
l2195:	
	movlw	01h
u2945:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2945

	line	74
	
l2197:	
	movlw	01h
u2955:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2955
	line	75
	
l2199:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l2191
u2960:
	goto	l2201
	
l710:	
	line	76
	
l2201:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2203
	line	77
	
l711:	
	line	78
	
l2203:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l2207
u2970:
	line	79
	
l2205:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2981
	addwf	(___ftmul@f3_as_product+1),f
u2981:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2982
	addwf	(___ftmul@f3_as_product+2),f
u2982:

	goto	l2207
	
l712:	
	line	80
	
l2207:	
	movlw	01h
u2995:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2995

	line	81
	
l2209:	
	movlw	01h
u3005:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3005

	line	82
	
l2211:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2203
u3010:
	goto	l2213
	
l713:	
	line	83
	
l2213:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l706
	
l2215:	
	line	84
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[COMMON] float 
;;  f1              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3              3    5[BANK0 ] float 
;;  sign            1    9[BANK0 ] unsigned char 
;;  exp             1    8[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text248
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2125:	
	movf	(___ftdiv@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l2131
u2800:
	line	56
	
l2127:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l696
	
l2129:	
	goto	l696
	
l695:	
	line	57
	
l2131:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l2137
u2810:
	line	58
	
l2133:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l696
	
l2135:	
	goto	l696
	
l697:	
	line	59
	
l2137:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2139:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2141:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2825:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2820:
	addlw	-1
	skipz
	goto	u2825
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2143:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2835:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2830:
	addlw	-1
	skipz
	goto	u2835
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2145:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2147:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2149:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l2151
	line	69
	
l698:	
	line	70
	
l2151:	
	movlw	01h
u2845:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2845
	line	71
	
l2153:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2855
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2855
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2855:
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l2159
u2850:
	line	72
	
l2155:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l2157:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2159
	line	74
	
l699:	
	line	75
	
l2159:	
	movlw	01h
u2865:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2865
	line	76
	
l2161:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2151
u2870:
	goto	l2163
	
l700:	
	line	77
	
l2163:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l696
	
l2165:	
	line	78
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_adc_res
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:

;; *************** function _adc_res *****************
;; Defined at:
;;		line 24 in file "C:\Users\JOPHIN\Documents\pic\ultrasonic\adc_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text249
	file	"C:\Users\JOPHIN\Documents\pic\ultrasonic\adc_driver.c"
	line	24
	global	__size_of_adc_res
	__size_of_adc_res	equ	__end_of_adc_res-_adc_res
	
_adc_res:	
	opt	stack 7
; Regs used in _adc_res: [wreg+status,2+status,0+btemp+1]
	line	27
	
l2115:	
;adc_driver.c: 27: ADRESL = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(158)^080h	;volatile
	line	28
;adc_driver.c: 28: ADRESH = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(30)	;volatile
	line	29
	
l2117:	
;adc_driver.c: 29: { unsigned char _dcnt; _dcnt = 20; while(--_dcnt != 0) { _nop(); } };
	movlw	(014h)
	movwf	(??_adc_res+0)+0
	movf	(??_adc_res+0)+0,w
	movwf	(adc_res@_dcnt)
	goto	l2119
	
l585:	
	nop
	goto	l2119
	
l584:	
	
l2119:	
	movlw	low(01h)
	subwf	(adc_res@_dcnt),f
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l585
u2770:
	
l586:	
	line	30
;adc_driver.c: 30: ADGO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	32
;adc_driver.c: 32: while(ADGO)
	goto	l587
	
l588:	
	line	33
;adc_driver.c: 33: continue;
	
l587:	
	line	32
	btfsc	(250/8),(250)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l587
u2780:
	goto	l2121
	
l589:	
	line	35
	
l2121:	
;adc_driver.c: 35: return (((unsigned int)ADRESH)<<8)|(ADRESL);
	movf	(30),w	;volatile
	movwf	(??_adc_res+0)+0
	clrf	(??_adc_res+0)+0+1
	movlw	08h
	movwf	btemp+1
u2795:
	clrc
	rlf	(??_adc_res+0)+0,f
	rlf	(??_adc_res+0)+1,f
	decfsz	btemp+1,f
	goto	u2795
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	0+(??_adc_res+0)+0,w
	movwf	(?_adc_res)
	movf	1+(??_adc_res+0)+0,w
	movwf	1+(?_adc_res)
	goto	l590
	
l2123:	
	line	36
	
l590:	
	return
	opt stack 0
GLOBAL	__end_of_adc_res
	__end_of_adc_res:
;; =============== function _adc_res ends ============

	signat	_adc_res,90
	global	_adc_read
psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:

;; *************** function _adc_read *****************
;; Defined at:
;;		line 17 in file "C:\Users\JOPHIN\Documents\pic\ultrasonic\adc_driver.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    1[COMMON] unsigned char 
;;  _dcnt           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text250
	file	"C:\Users\JOPHIN\Documents\pic\ultrasonic\adc_driver.c"
	line	17
	global	__size_of_adc_read
	__size_of_adc_read	equ	__end_of_adc_read-_adc_read
	
_adc_read:	
	opt	stack 7
; Regs used in _adc_read: [wreg+status,2+status,0]
;adc_read@ch stored from wreg
	movwf	(adc_read@ch)
	line	18
	
l2109:	
;adc_driver.c: 18: { unsigned char _dcnt; _dcnt = 100; while(--_dcnt != 0) { _nop(); } };
	movlw	(064h)
	movwf	(??_adc_read+0)+0
	movf	(??_adc_read+0)+0,w
	movwf	(adc_read@_dcnt)
	goto	l2111
	
l579:	
	nop
	goto	l2111
	
l578:	
	
l2111:	
	movlw	low(01h)
	subwf	(adc_read@_dcnt),f
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l579
u2750:
	goto	l2113
	
l580:	
	line	19
	
l2113:	
;adc_driver.c: 19: ADCON0 = 193 | (ch << 3);
	movf	(adc_read@ch),w
	movwf	(??_adc_read+0)+0
	movlw	(03h)-1
u2765:
	clrc
	rlf	(??_adc_read+0)+0,f
	addlw	-1
	skipz
	goto	u2765
	clrc
	rlf	(??_adc_read+0)+0,w
	iorlw	0C1h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	20
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_adc_read
	__end_of_adc_read:
;; =============== function _adc_read ends ============

	signat	_adc_read,4216
	global	_DelayMs
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 24 in file "C:\Users\JOPHIN\Documents\pic\ultrasonic\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[COMMON] unsigned char 
;;  _dcnt           1    3[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc_init
;; This function uses a non-reentrant model
;;
psect	text251
	file	"C:\Users\JOPHIN\Documents\pic\ultrasonic\delay.c"
	line	24
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 6
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	movwf	(DelayMs@cnt)
	line	26
;delay.c: 25: unsigned char i;
;delay.c: 26: do {
	
l565:	
	line	27
	
l2101:	
;delay.c: 27: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	28
;delay.c: 28: do {
	
l566:	
	line	29
;delay.c: 29: { unsigned char _dcnt; _dcnt = 250; while(--_dcnt != 0) { _nop(); } };
	movlw	(0FAh)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l2103
	
l568:	
	nop
	goto	l2103
	
l567:	
	
l2103:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l568
u2720:
	goto	l2105
	
l569:	
	line	30
	
l2105:	
;delay.c: 30: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l566
u2730:
	goto	l2107
	
l570:	
	line	31
	
l2107:	
;delay.c: 31: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l565
u2740:
	goto	l572
	
l571:	
	line	32
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	___ftge
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text252
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2037:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l2041
u2610:
	line	7
	
l2039:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u2621
	goto	u2622
u2621:
	addwf	(??___ftge+0)+1,f
	
u2622:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2623
	goto	u2624
u2623:
	addwf	(??___ftge+0)+2,f
	
u2624:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2041
	
l774:	
	line	8
	
l2041:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2045
u2630:
	line	9
	
l2043:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u2641
	goto	u2642
u2641:
	addwf	(??___ftge+0)+1,f
	
u2642:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2643
	goto	u2644
u2643:
	addwf	(??___ftge+0)+2,f
	
u2644:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2045
	
l775:	
	line	10
	
l2045:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2047:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2049:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2655
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2655
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2655:
	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l2053
u2650:
	
l2051:	
	clrc
	
	goto	l776
	
l1901:	
	
l2053:	
	setc
	
	goto	l776
	
l1903:	
	goto	l776
	
l2055:	
	line	13
	
l776:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftpack
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		___ftadd
;;		___lbtoft
;;		___abtoft
;;		___awtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text253
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1977:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2480
	goto	l1981
u2480:
	
l1979:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l1987
u2490:
	goto	l1981
	
l941:	
	line	65
	
l1981:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l942
	
l1983:	
	goto	l942
	
l939:	
	line	66
	goto	l1987
	
l944:	
	line	67
	
l1985:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2505:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2505

	goto	l1987
	line	69
	
l943:	
	line	66
	
l1987:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l1985
u2510:
	goto	l946
	
l945:	
	line	70
	goto	l946
	
l947:	
	line	71
	
l1989:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1991:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1993:	
	movlw	01h
u2525:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2525

	line	74
	
l946:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l1989
u2530:
	goto	l1997
	
l948:	
	line	75
	goto	l1997
	
l950:	
	line	76
	
l1995:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2545:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2545
	goto	l1997
	line	78
	
l949:	
	line	75
	
l1997:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l1995
u2550:
	
l951:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l952
u2560:
	line	80
	
l1999:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l952:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2001:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2575:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2570:
	addlw	-1
	skipz
	goto	u2575
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2003:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2580
	goto	l953
u2580:
	line	84
	
l2005:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l953:	
	line	85
	line	86
	
l942:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
