/* 
 * File:   External_Interrupt.c
 * Author: Mohamed Ali
 * LinkedIn : https://www.linkedin.com/in/mohamed-ali-a72542316/
 * Created on July 8, 2024, 1:01 PM
 */

#include "External_Interrupt.h"
/***************************ISR FUNCTIONS DECLERATION*******************************/
void INT0_ISR(void);

/***************************CALL BACK FUNCTIONS*******************************/
void(*INT0_InterruptManager)(void);

STD_ReturnType Interuupt_INT0_Initialize(INTERRUPT_INT0_t *_INT0){
    STD_ReturnType RET = RET_OK;
    if (NULL == _INT0){
        RET = RET_NOT_OK;
    }
    else {
        STD_ReturnType RET = RET_OK;
        /*DISABLE INT0 INTERRUPT PIN*/
        INTERRUPT_INT0_DISABLE_INT0E();
        /*CLEAR FLAG OF INT0 */
        INTERRUPT_INT0_CLEAR_INT0F();
        /*INITIALIZE EDGE TRIGGER OF INT0*/
        INTERRUPT_INT0_RIGING_FALLING_EDGE(_INT0->INTERRUPT_INTx_Edge);
        /*INITIALIZE CALL BACK FUNCTION OF INT0*/
        INT0_InterruptManager = _INT0->InterruptHandler;
        /*PIN INITIALIZATION*/
        RET = GPIO_PIN_Give_Direction(&(_INT0->pin),GPIO_PIN_INPUT);
        INTERRUPT_GLOBAL_INT_ENABLE();
        INTERRUPT_INT0_ENABLE_INT0E();
    }
    return RET;
}
STD_ReturnType Interuupt_INT0_DeInitialize(INTERRUPT_INT0_t *_INT0){
    STD_ReturnType RET = RET_OK;
    if (NULL == _INT0){
        RET = RET_NOT_OK;
    }
    else {
        /*DISABLE INT0 INTERRUPT PIN*/
        INTERRUPT_INT0_DISABLE_INT0E();
    }
    return RET;
}



/***************************ISR FUNCTIONS FOR INT0*******************************/
void INT0_ISR(void){
    /*CLEAR FLAG OF INT0*/
    INTERRUPT_INT0_CLEAR_INT0F();
    if(INT0_InterruptManager){
        INT0_InterruptManager();
    }
}


    