#include "em_device.h"
#include "em_chip.h"
#include "em_rtc.h"
#include "em_cmu.h"

#define RTC_FREQ    32768
#define CLOCK_DIVISION 32768

void rtcSetup(){
	RTC_Init_TypeDef rtcInit = RTC_INIT_DEFAULT;

	/* Enabling clock to LE configuration register */
	CMU_ClockEnable(cmuClock_CORELE, true);

	/* Selecting crystal oscillator to drive LF clock */
	CMU_ClockSelectSet(cmuClock_LFA, cmuSelect_LFXO);

	/* 32 clock division to save energy */
	CMU_ClockDivSet(cmuClock_RTC, cmuClkDiv_32768);

	/* Providing clock to RTC */
	CMU_ClockEnable(cmuClock_RTC, true);

	/* Initialize RTC */
	rtcInit.enable   = false;  /* Do not start RTC after initialization is complete. */
	rtcInit.debugRun = false;  /* Halt RTC when debugging. */
	rtcInit.comp0Top = true;   /* Wrap around on COMP0 match. */
	RTC_Init(&rtcInit);

	/* Interrupt every minute */
	RTC_CompareSet(0, ((RTC_FREQ / CLOCK_DIVISION) *3600*24 ) - 1 );

	/* Enable interrupt */
	NVIC_EnableIRQ(RTC_IRQn);
	RTC_IntEnable(RTC_IEN_COMP0);

	/* Start Counter */
	RTC_Enable(true);

}

void rtcSetDelay(int menuItem){
	int delay;
	switch (menuItem)
	{
		case 0:
			delay = 10;
			break;
		case 1:
			delay = 3600 * 12;
			break;
		case 2:
			delay = 3600 * 24;
			break;
		case 3:
			delay = 3600 * 48;
			break;
	}
	/* Interrupt every minute */
	RTC_CompareSet(0, ((RTC_FREQ / CLOCK_DIVISION) * delay ) - 1 );

	/* Start Counter */
	RTC_Enable(true);
}

void rtcDisable(){
	RTC_Enable(false);
}
