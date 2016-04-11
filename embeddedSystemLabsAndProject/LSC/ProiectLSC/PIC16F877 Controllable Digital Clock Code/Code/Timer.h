#ifndef __TIMER_H
#define __TIMER_H

// Variables
extern unsigned int msCounter;
extern unsigned int secCounter;
extern unsigned int minCounter;
extern unsigned int hrCounter;


// Function declarations
void InitTimer0(void);
void Init1msecTimerInterrupt(void);
void UpdateTimeCounters(unsigned char);

#endif