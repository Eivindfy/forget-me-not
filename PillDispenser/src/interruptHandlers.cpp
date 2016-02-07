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
#include "rtc.h"

char *sentence[] = {"KAI", "TAKE", "YOUR", "MEDS."};
int wordPtr = 0;
int stepsTaken = 0;
#define MAX_STEPS 8

char *menu[] = {"1 0s", "12 h", "1 days", "2 days" };
int menuPtr = 0;

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
	if(getDispenserState() == stateNotify ){
		SegmentLCD_Write(sentence[wordPtr]);
		wordPtr++;
		if(wordPtr == 4){wordPtr = 0;}
	}
	else if(getDispenserState() == stateStep){
		motor_microstep();
		if(stepsTaken == MAX_STEPS - 1){
			changeStateToNotify();
			wordPtr = 0;
			stepsTaken = 0;
		}
		stepsTaken ++;
	}
}


void GPIO_EVEN_IRQHandler(void)
{

	if(getDispenserState() == stateNotify){
		if(GPIO_IntGet() & 1){
			GPIO_IntClear(1 << 0);
			changeStateToWait();
			SegmentLCD_AllOff();
		}
	}else if(getDispenserState() == stateMenu){
		if(GPIO_IntGet() & 1<< 10){
			GPIO_IntClear(1 << 10);
			menuPtr++;
			if(menuPtr == 4){menuPtr = 0;}
			SegmentLCD_Write(menu[menuPtr]);
		}
	}
}

void GPIO_ODD_IRQHandler(void)
{
	if(GPIO_IntGet() & (1 << 9)){
		if(getDispenserState() == stateMenu){
			GPIO_IntClear(1 << 9);
			changeStateToWait();
			rtcSetDelay(menuPtr);
			SegmentLCD_AllOff();
		}else{
			GPIO_IntClear(1 << 9);
			changeStateToMenu();
			SegmentLCD_Write("MENU");
		}
	}

}


