/* 
 * File:   External_Interrupt.h
 * Author: Mohamed Ali
 * LinkedIn : https://www.linkedin.com/in/mohamed-ali-a72542316/
  * Created on July 15, 2024, 10:49 AM
 */

#ifndef EXTERNAL_INTERRUPT_H
#define	EXTERNAL_INTERRUPT_H


/***************************INCLUDES****************************/
#include "Interrupt_Config.h"
/***************************MACRO DECLERATION ****************************/

/***************************MACRO FUNCTION****************************/
/*INT0  ENABLE,FLAG AND EDGE STATUS BITS*/
#define INTERRUPT_INT0_ENABLE_INT0E()           (INTCONbits.INT0E = 1)     
#define INTERRUPT_INT0_DISABLE_INT0E()          (INTCONbits.INT0E = 0)   
#define INTERRUPT_INT0_SET_INT0F()              (INTCONbits.INT0F = 1)
#define INTERRUPT_INT0_CLEAR_INT0F()            (INTCONbits.INT0F = 0)
#define INTERRUPT_INT0_RIGING_FALLING_EDGE(x)   (INTCON2bits.INTEDG0=x)
/***************************DATA TYPE****************************/
typedef enum {
    INTERRUPT_INT0_FALLING_Edge= 0 ,
    INTERRUPT_INT0_RISIGNG_Edge
}INTERRUPT_INT0_Edge_t;
typedef struct {
    void(*InterruptHandler)(void);
    GPIO_PIN_CONFIG       pin ;
    INTERRUPT_INT0_Edge_t INTERRUPT_INTx_Edge;
}INTERRUPT_INT0_t;
/***************************FUNCTIONS****************************/
STD_ReturnType Interuupt_INT0_Initialize(INTERRUPT_INT0_t *_INT0);
STD_ReturnType Interuupt_INT0_DeInitialize(INTERRUPT_INT0_t *_INT0);

#endif	/* EXTERNAL_INTERRUPT_H */

