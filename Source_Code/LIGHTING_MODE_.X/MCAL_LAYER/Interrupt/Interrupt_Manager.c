/* 
 * File:   Interrupt_Mananger.c
 * Author: Mohamed Ali
 * LinkedIn : https://www.linkedin.com/in/mohamed-ali-a72542316/
 * Created on July 8, 2024, 1:07 PM
 */

#include "Interrupt_Mananger.h"

void __interrupt() InterruptMangerHigh(){
   if(FLAG_SETED == INTCONbits.INT0F && INTERRUPT_ENABLE == INTCONbits.INT0E){
        INT0_ISR();
    }else{/*nothing*/}
}
void __interrupt(low_priority) InterruptMangerLow(){
    
}
