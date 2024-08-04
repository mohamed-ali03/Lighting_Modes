/* 
 * File:   Interrupt_Config.h
 * Author: Mohamed Ali
 * LinkedIn : https://www.linkedin.com/in/mohamed-ali-a72542316/
 * Created on July 8, 2024, 1:06 PM
 */

#ifndef INTERRUPT_CONFIG_H
#define	INTERRUPT_CONFIG_H


/***************************INCLUDES****************************/
#include "Interrupt_Gen.h"
#include "../GPIO_hal.h"
/***************************MACRO DECLERATION ****************************/

/***************************MACRO FUNCTION****************************/

#define INTERRUPT_PRIORITY_FEATURE_EN_DES(x)         (RCONbits.IPEN = x)
#define INTERRUPT_GLOBAL_INT_HIGH_PRIORITY_ENABLE() (INTCONbits.GIEH =1)
#define INTERRUPT_GLOBAL_INT_HIGH_PRIORITY_DISABLE()(INTCONbits.GIEH =0)
#define INTERRUPT_GLOBAL_INT_LOW_PRIORITY_ENABLE()  (INTCONbits.GIEL =1)
#define INTERRUPT_GLOBAL_INT_LOW_PRIORITY_DISABLE() (INTCONbits.GIEL =0)

#define INTERRUPT_GLOBAL_INT_ENABLE()                 (INTCONbits.GIE =1)
#define INTERRUPT_GLOBAL_INT_DISABLE()                (INTCONbits.GIE =0)
#define INTERRUPT_PERIPHERAL_INT_ENABLE()             (INTCONbits.PEIE =1)
#define INTERRUPT_PERIPHERAL_INT_DISABLE()            (INTCONbits.PEIE =0)
/***************************DATA TYPE****************************/
typedef enum {
    INTERRUPT_LOW_PRIORITY=0 ,
    INTERRUPT_HIGH_PRIORITY      
}INTERRUPT_PRIORITY_LEVEL_t;
/***************************FUNCTIONS****************************/


#endif	/* INTERRUPT_CONFIG_H */

