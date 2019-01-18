#line 1 "C:/Users/only try/Desktop/PROJECT 2 Control of many leds with one button(Circuit+Microcontroller program with C language)/C PROGRAMMING CODE (microcontroller)/BUTTONMULTILED.c"
void main() {
int press=0;
TRISB=0;
TRISC.F0=1;
PORTB=0;
while(1)
{
if (PORTC.F0==1)
press++;
delay_ms(200);
if (press==1)
PORTB=0B11111111;
else if(press==2)
PORTB=0B01010101;
else if(press==3)
PORTB=0B10101010;
else if(press==4)
{
PORTB=0;
press=0;
}
}
}
