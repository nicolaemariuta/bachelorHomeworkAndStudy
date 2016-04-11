
#ifndef __INCLUDES_H
#define __INCLUDES_H

// Define CPU Frequency
// This must be defined, if __delay_ms() or 
// __delay_us() functions are used in the code
#define _XTAL_FREQ   4000000  

// Define stats
#define NORMAL_STATE		0
#define CONFIG_HR_STATE		1
#define CONFIG_MIN_STATE	2
#define CONFIG_SEC_STATE	3


#include <htc.h> 
#include "LCD.h"
#include "Timer.h"


#endif