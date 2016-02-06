/*
 * leTimer.cpp
 *
 *  Created on: 5 Feb 2016
 *      Author: Eivind
 */
#include "em_letimer.h"
#include "em_cmu.h"
#include "leTimer.h"
#include <stdint.h>

#define LE_TIMER_CLOCK_FREQ 32768
#define LE_TIMER_CLOCK_DIVISION 32

void leTimerSetup(){
	/* 32 clock division to save energy */
	CMU_ClockDivSet(cmuClock_LETIMER0, cmuClkDiv_32);


	NVIC_EnableIRQ(LETIMER0_IRQn);
	CMU_ClockEnable(cmuClock_LETIMER0, true);

	LETIMER_Init_TypeDef letimerInit = LETIMER_INIT_DEFAULT;

	letimerInit.enable   = false;  /* Do not start LE timer after initialization is complete. */
	letimerInit.comp0Top = true;

	/* Initialising LE timer */
	LETIMER_Init(LETIMER0, &letimerInit);

	/* Initialize LE timer */
	LETIMER_Enable(LETIMER0, true);
//	leTimerTurnOn(10);
}

void leTimerTurnOff(){
	/* Disable LE timer */
//	CMU_ClockEnable(cmuClock_LETIMER0, false);


	/* Reset LE timer */
 //   LETIMER_Reset(LETIMER0);

 //   LETIMER_Enable(LETIMER0, false);
	LETIMER_IntDisable(LETIMER0, LETIMER_IF_COMP0);
}

void leTimerTurnOn(int interval10thOfSecond){



	/* Setting timer interrupt time to 1 second */
	LETIMER_CompareSet(LETIMER0, 0, ((LE_TIMER_CLOCK_FREQ / (LE_TIMER_CLOCK_DIVISION * 16))  * interval10thOfSecond)-1);

	/*Enabling interrupt */
	LETIMER_IntEnable(LETIMER0, LETIMER_IF_COMP0);


}
