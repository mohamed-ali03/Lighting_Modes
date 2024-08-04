
#include "Led.h"

STD_ReturnType Led_Initialize(LED_t *_led){
    STD_ReturnType RET = RET_OK;
    if (NULL == _led){
        RET = RET_NOT_OK;
    }
    else{
        RET = GPIO_PIN_Initialize(&(_led->_pin));
    }
    return RET;
}

STD_ReturnType Led_Turn_ON(LED_t *_led){
    STD_ReturnType RET = RET_OK;
    if (NULL == _led){
        RET = RET_NOT_OK;
    }
    else{
        RET = GPIO_PIN_Write_logic(&(_led->_pin),GPIO_PIN_LOGIC_HIGH);
    }
    return RET;
}

STD_ReturnType Led_Turn_OFF(LED_t *_led){
    STD_ReturnType RET = RET_OK;
    if (NULL == _led){
        RET = RET_NOT_OK;
    }
    else{
        RET = GPIO_PIN_Write_logic(&(_led->_pin),GPIO_PIN_LOGIC_LOW);
    }
    return RET;
}

STD_ReturnType Led_Toggle(LED_t *_led){
    STD_ReturnType RET = RET_OK;
    if (NULL == _led){
        RET = RET_NOT_OK;
    }
    else{
        RET = GPIO_PIN_Toggle_logic(&(_led->_pin));
    }
    return RET;
}
