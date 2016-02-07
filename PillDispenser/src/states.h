/*
 * states.h
 *
 *  Created on: 6 Feb 2016
 *      Author: Eivind
 */

#ifndef STATES_H_
#define STATES_H_


enum states {stateWait, stateStep, stateNotify, stateMenu};



void changeStateToStep();
void changeStateToNotify();
void changeStateToWait();
void changeStateToMenu();
states getDispenserState();

#endif /* STATES_H_ */
