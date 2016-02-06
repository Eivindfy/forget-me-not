/*
 * states.cpp
 *
 *  Created on: 6 Feb 2016
 *      Author: Eivind
 */

#include "states.h"
#include "leTimer.h"
#include "gpio.h"

void changeStateToStep(){
	dispenserState = stateStep;
	leTimerTurnOn(4);
}

void changeStateToNotify(){
	leTimerTurnOff();
	leTimerTurnOn(10);
	pillTriggerOn();
	dispenserState = stateNotify;
}

void changeStateToWait(){
	leTimerTurnOff();
	pillTriggerOff();
	dispenserState = stateWait;
}

states getDispenserState(){
	return dispenserState;
}


