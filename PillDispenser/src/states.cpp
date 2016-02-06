/*
 * states.cpp
 *
 *  Created on: 6 Feb 2016
 *      Author: Eivind
 */

#include "states.h"
#include "leTimer.h"
#include "gpio.h"

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
	dispenserState = stateWait;
}

states getDispenserState(){
	return dispenserState;
}


