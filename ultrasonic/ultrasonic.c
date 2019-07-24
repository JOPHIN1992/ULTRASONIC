#include<pic.h>
#include"delay.c"
#include"adc_driver.c"
#define _XTAL_FREQ 16000000
__CONFIG(0X1932);
float d;
void main()
{
	TRISB1=0;//OP T
	TRISB0=1;//IP E
    TRISB2=0;//OP L
    adc_init();
	while(1)
	{
          
		RB1=0;
		__delay_ms(1000);
		RB1=1;
		__delay_ms(1000);
		RB1=0;
        RB0=1;
        adc_read(0);
 		d=adc_res();
		d=d*0.034/2;
		if(d<20)
		{
			RB2=1;
			}
			else
			{
				RB2=0;
				}
				}
				}