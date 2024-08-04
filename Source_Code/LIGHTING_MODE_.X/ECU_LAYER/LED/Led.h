/* 
 * File:   Led.h
 * Author: mo ali
 *
 * Created on July 7, 2024, 4:56 PM
 */

#ifndef LED_H
#define	LED_H

/***************************INCLUDES****************************/
#include "../../MCAL_layer/GPIO_hal.h"
/***************************MACRO DECLERATION ****************************/

/***************************MACRO FUNCTION****************************/

/***************************DATA TYPE****************************/
typedef struct {
    GPIO_PIN_CONFIG _pin;
}LED_t;
/***************************FUNCTIONS****************************/
STD_ReturnType Led_Initialize(LED_t *_led);
STD_ReturnType Led_Turn_ON(LED_t *_led);
STD_ReturnType Led_Turn_OFF(LED_t *_led);
STD_ReturnType Led_Toggle(LED_t *_led);


#endif	/* LED_H */

