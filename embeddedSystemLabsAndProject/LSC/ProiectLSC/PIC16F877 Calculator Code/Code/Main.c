/*  Name     : main.c
 *  Purpose  : Main file for calculator code for PIC16F877.
 *  Author   : M.Saeed Yasin
 *  Date     : 25-11-12
 *  Website  : saeedsolutions.blogspot.com
 *  Revision : None
 */
#include "Includes.h"

// Configuration word for PIC16F877
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);

// Main function
void main(void)
{	
	char key;           // Key char for keeping record of pressed key
	int num1 = 0;       // First number
	char func = '+';    // Function to be performed among two numbers
	int num2 = 0;       // Second number

	InitKeypad();       // Initialize Keypad
	InitLCD();			// Initialize LCD

   while(1)
   { 
     //get numb1
     key = GetKey();
     ClearLCDScreen();	    	// Clear LCD screen 
	 WriteDataToLCD(key);       // Echo the key pressed to LCD
	 num1 = get_num(key);       // Get int number from char value, it checks for wrong input as well
     
	 if(num1!=Error)            // If correct input then proceed, num1==Error means wrong input
	 {
		 //get function
		 key = GetKey();
		 WriteDataToLCD(key);             //Echo the key pressed to LCD
		 func = get_func(key);            //it checks for wrong func
		 
		 if(func!='e')                    //if correct input then proceed, func=='e' means wrong input
		 {
			 //get numb2
			 key = GetKey();
			 WriteDataToLCD(key);         //Echo the key pressed to LCD
			 num2 = get_num(key);         //Get int number from char value, it checks for wrong input as well
			 
			 if(num2!=Error)              //if correct input then proceed, num2==Error means wrong input
			 {
				 //get equal sign
				 key = GetKey();
				 WriteDataToLCD(key);     //Echo the key pressed to LCD
				 
				 if(key == '=')           //if = is pressed then proceed
				 {
					 switch(func)         //switch on function
					 {
					 case '+': disp_num(num1+num2); break;
					 case '-': disp_num(num1-num2); break;
					 case 'x': disp_num(num1*num2); break;
					 case '/': disp_num(num1/num2); break;
					 }
				 }
				 else				      //key other then = here means error wrong input
				 { 
					 if(key == 'C')       //if clear screen is pressed then clear screen and reset
						ClearLCDScreen(); // Clear LCD screen 
					 else
						DispError(0); 	  //Display wrong input error
				 }                                 
			 }
		 }
     }
   }
}



/*
 * Functions used inside main for 
 * making calculator are shown below
 */

int get_num(char ch)         //convert char into int
{
	int num = 0;

	switch(ch)
	{
		case '0': num = 0; break;
		case '1': num = 1; break;
		case '2': num = 2; break;
		case '3': num = 3; break;
		case '4': num = 4; break;
		case '5': num = 5; break;
		case '6': num = 6; break;
		case '7': num = 7; break;
		case '8': num = 8; break;
		case '9': num = 9; break;
		case 'C': ClearLCDScreen(); num = Error; break;  //this is used as a clear screen and then reset by setting error
		default: DispError(0); num = Error; break;       //it means wrong input
	}

	return num;
}

char get_func(char chf)            //detects the errors in inputted function
{
	if(chf=='C')                   //if clear screen then clear the LCD and reset
	{ 
		ClearLCDScreen();          //clear display
		return 'e'; 
	}
	
	if( chf!='+' && chf!='-' && chf!='x' && chf!='/' )  //if input is not from allowed funtions then show error
	{ 
		DispError(1); 
		return 'e'; 
	}

	return chf;                        //function is correct so return the correct function
}


void DispError(int numb)           //displays differet error messages
{
	ClearLCDScreen();              //clear display
	
	switch(numb)
	{
	case 0: 	WriteStringToLCD("Wrong Input");      break;
	case 1: 	WriteStringToLCD("Wrong Function");   break;
	default:    WriteStringToLCD("Wrong Input");      break;
	}
}

void disp_num(int numb)            //displays number on LCD
{	
	unsigned char UnitDigit  = 0;  //It will contain unit digit of numb
	unsigned char TenthDigit = 0;  //It will contain 10th position digit of numb

	if(numb<0)
	{
		numb = -1*numb;          // Make number positive
		WriteDataToLCD('-');	 // Display a negative sign on LCD
	}

	TenthDigit = (numb/10);	                  // Findout Tenth Digit

	if( TenthDigit != 0)	                  // If it is zero, then don't display
		WriteDataToLCD(TenthDigit+0x30);	  // Make Char of TenthDigit and then display it on LCD

	UnitDigit = numb - TenthDigit*10;

	WriteDataToLCD(UnitDigit+0x30);	  // Make Char of UnitDigit and then display it on LCD
}

while(1)
	{

		clearScreen();					// Clear LCD screen
		ADC_value = GetADCValue(AN1);		// Read ADC value from RE2(AN7) pin

		// ADC_value can have a value from 0 (0v) to 1023(5v) only.
		// SO display 4 digits of ADC_value
		digit1 = (unsigned int)(ADC_value/1000);									 // Calculate digit1 of ADC_value
		digit2 = (unsigned int)((ADC_value - digit1*1000)/100);						 // Calculate digit2 of ADC_value
		digit3 = (unsigned int)((ADC_value - (digit1*1000+digit2*100))/10);			 // Calculate digit3 of ADC_value
		digit4 = (unsigned int)(ADC_value - (digit1*1000+digit2*100+digit3*10));	 // Calculate digit4 of ADC_value

		writeChar(digit1+0x30);		// Display digit1 of ADC_value on LCD
		writeChar(digit2+0x30);		// Display digit2 of ADC_value on LCD
		writeChar(digit3+0x30);		// Display digit3 of ADC_value on LCD
		writeChar(digit4+0x30);		// Display digit4 of ADC_value on LCD

		__delay_ms(500);					// Half second delay before next reading
	}

