/*
 * states.cpp
 *
 *  Created on: 6 Feb 2016
 *      Author: Eivind
 */

#include "states.h"
#include "leTimer.h"
#include "gpio.h"
#include "rtc.h"

states dispenserState = stateWait;

void changeStateToStep(){
	leTimerTurnOn(4);
	dispenserState = stateStep;
}

void changeStateToNotify(){
	dispenserState = stateNotify;
	leTimerTurnOff();
	pillTriggerOn();
	leTimerTurnOn(10);
}

void changeStateToWait(){
	leTimerTurnOff();
	pillTriggerOff();
	menuButtonOff();
	dispenserState = stateWait;
}

void changeStateToMenu(){
	leTimerTurnOff();
	pillTriggerOff();
	menuButtonOn();
	rtcDisable();
	dispenserState = stateMenu;
}

states getDispenserState(){
	return dispenserState;
}


