/*
 * timer.c
 *
 *  Created on: 7. feb. 2016
 *      Author: Jon
 */

#include <stdbool.h>
#include "timer.h"
#include "em_timer.h"
#include "em_cmu.h"

#define TOP 14

void timerSetup(void){
	  /* Enable clock for TIMER0 module */
	  CMU_ClockEnable(cmuClock_TIMER0, true);

	  /* Select TIMER0 parameters */
	  TIMER_Init_TypeDef timerInit;

	  timerInit.enable = true;
	  timerInit.debugRun = true;
	  timerInit.prescale = timerPrescale1024;
	  timerInit.clkSel = timerClkSelHFPerClk;
	  timerInit.fallAction = timerInputActionNone;
	  timerInit.riseAction = timerInputActionNone;
	  timerInit.mode       = timerModeUp;
	  timerInit.dmaClrAct  = false;
	  timerInit.quadModeX4 = false;
	  timerInit.oneShot    = false;
	  timerInit.sync       = false;




	    /* Enable TIMER0 interrupt vector in NVIC */
	    NVIC_EnableIRQ(TIMER0_IRQn);

	    /* Set TIMER Top value */
	    TIMER_TopSet(TIMER0, TOP);

	    /* Configure TIMER */
	     TIMER_Init(TIMER0, &timerInit);


}

void timerTurnOn(void)
{
	/* Enable overflow interrupt */
	TIMER_IntEnable(TIMER0, TIMER_IF_OF);
}

void timerTurnOff(void)
{
	TIMER_IntDisable(TIMER0, TIMER_IF_OF);
}
