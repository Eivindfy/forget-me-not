/*
 * interuptHandlers.cpp
 *
 *  Created on: 5 Feb 2016
 *      Author: Eivind
 */


#include "em_rtc.h"
#include "em_letimer.h"
#include "em_gpio.h"
#include "leTimer.h"
#include "segmentlcd.h"
#include "states.h"
#include "stepmotor.h"

char *sentence[] = {"KAI", "TAKE", "YOUR", "MEDS."};
int wordPtr = 0;
int stepsTaken = 0;
#define MAX_STEPS 8

void RTC_IRQHandler(void)
{
	/* Clear interrupt source */
	RTC_IntClear(RTC_IFC_COMP0);
	if(getDispenserState() == stateWait){
		changeStateToStep();
	}

}

void LETIMER0_IRQHandler(void){
	LETIMER_IntClear(LETIMER0, LETIMER_IFC_COMP0);
	if(getDispenserState() == stateNotify){
		SegmentLCD_Write(sentence[wordPtr]);
		wordPtr++;
		if(wordPtr == 4){wordPtr = 0;}
	}
	else if(getDispenserState() == stateStep){
		motor_microstep();
		if(stepsTaken == MAX_STEPS){
			changeStateToNotify();
		}
	}
}


void GPIO_EVEN_IRQHandler(void)
{
	if(GPIO_IntGet() & 1){
		GPIO_IntClear(1 << 0);
		changeStateToWait();
	}
}


