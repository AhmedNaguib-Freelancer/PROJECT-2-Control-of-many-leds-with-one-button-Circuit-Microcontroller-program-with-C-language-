
_main:

;BUTTONMULTILED.c,1 :: 		void main() {
;BUTTONMULTILED.c,2 :: 		int press=0;
	CLRF       main_press_L0+0
	CLRF       main_press_L0+1
;BUTTONMULTILED.c,3 :: 		TRISB=0;
	CLRF       TRISB+0
;BUTTONMULTILED.c,4 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;BUTTONMULTILED.c,5 :: 		PORTB=0;
	CLRF       PORTB+0
;BUTTONMULTILED.c,6 :: 		while(1)
L_main0:
;BUTTONMULTILED.c,8 :: 		if (PORTC.F0==1)
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;BUTTONMULTILED.c,9 :: 		press++;
	INCF       main_press_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_press_L0+1, 1
L_main2:
;BUTTONMULTILED.c,10 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;BUTTONMULTILED.c,11 :: 		if (press==1)
	MOVLW      0
	XORWF      main_press_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      1
	XORWF      main_press_L0+0, 0
L__main12:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;BUTTONMULTILED.c,12 :: 		PORTB=0B11111111;
	MOVLW      255
	MOVWF      PORTB+0
	GOTO       L_main5
L_main4:
;BUTTONMULTILED.c,13 :: 		else if(press==2)
	MOVLW      0
	XORWF      main_press_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      2
	XORWF      main_press_L0+0, 0
L__main13:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;BUTTONMULTILED.c,14 :: 		PORTB=0B01010101;
	MOVLW      85
	MOVWF      PORTB+0
	GOTO       L_main7
L_main6:
;BUTTONMULTILED.c,15 :: 		else if(press==3)
	MOVLW      0
	XORWF      main_press_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      3
	XORWF      main_press_L0+0, 0
L__main14:
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;BUTTONMULTILED.c,16 :: 		PORTB=0B10101010;
	MOVLW      170
	MOVWF      PORTB+0
	GOTO       L_main9
L_main8:
;BUTTONMULTILED.c,17 :: 		else if(press==4)
	MOVLW      0
	XORWF      main_press_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      4
	XORWF      main_press_L0+0, 0
L__main15:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
;BUTTONMULTILED.c,19 :: 		PORTB=0;
	CLRF       PORTB+0
;BUTTONMULTILED.c,20 :: 		press=0;
	CLRF       main_press_L0+0
	CLRF       main_press_L0+1
;BUTTONMULTILED.c,21 :: 		}
L_main10:
L_main9:
L_main7:
L_main5:
;BUTTONMULTILED.c,22 :: 		}
	GOTO       L_main0
;BUTTONMULTILED.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
