/*
 * states.h
 *
 *  Created on: 6 Feb 2016
 *      Author: Eivind
 */

#ifndef STATES_H_
#define STATES_H_


enum states {stateWait, stateStep, stateNotify};

states dispenserState = stateWait;

void changeStateToStep();
void changeStateToNotify();
void changeStateToWait();
states getDispenserState();

#endif /* STATES_H_ */
