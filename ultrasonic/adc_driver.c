#include <pic.h>
//#include "delay.c"

void adc_init(void);
void adc_read(unsigned char);
unsigned int adc_res(void);

//void main(){}

void adc_init()
{
	DelayMs(100);
	ADCON1 = 0x82;	
}

void adc_read(unsigned char ch)
{
	DelayUs(100);
	ADCON0 = 193 | (ch << 3); 
}


unsigned int adc_res()
{
		

	ADRESL = 0;				
	ADRESH = 0;
	DelayUs(20);			 
	ADGO = 1;				// Starts the A/D Conversion 
	
	while(ADGO)				
		continue;
	
	return (((unsigned int)ADRESH)<<8)|(ADRESL);
}
