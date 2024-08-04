/* 
 * File:   GPIO_hal.h
 * Author: mo ali
 *
 * Created on July 6, 2024, 10:20 AM
 */

#include "GPIO_hal.h"

/**************************************Pin Functions******************************************/
STD_ReturnType GPIO_PIN_Initialize(GPIO_PIN_CONFIG *_pin){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _pin){
        Ret = RET_NOT_OK ;
    }
    else{
        /*Direction Initialization */
        Ret = GPIO_PIN_Give_Direction(_pin ,_pin->pin_direction);
        /*Logic Initialization */
        Ret = GPIO_PIN_Write_logic(_pin,_pin->pin_logic);
    }
    return Ret ;
}

STD_ReturnType GPIO_PIN_Write_logic(GPIO_PIN_CONFIG *_pin,GPIO_PIN_LOGIC _logic){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _pin){
        Ret = RET_NOT_OK ;
    }
    else{
        if(GPIO_PIN_LOGIC_LOW == _logic ){
            RESET_BIN(*LAT_REG[_pin->pin_port],_pin->pin_num);
        }
        else if (GPIO_PIN_LOGIC_HIGH == _logic ){
            SET_BIN(*LAT_REG[_pin->pin_port],_pin->pin_num);
        }
        else {/*nothing*/}
    }
    return Ret ;
}
STD_ReturnType GPIO_PIN_Toggle_logic(GPIO_PIN_CONFIG *_pin){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _pin){
        Ret = RET_NOT_OK ;
    }
    else{
        TOGGLE_BIN(*LAT_REG[_pin->pin_port],_pin->pin_num);
    }
    return Ret ;
}

STD_ReturnType GPIO_PIN_Read_Logic(GPIO_PIN_CONFIG *_pin,GPIO_PIN_LOGIC *_logic){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _pin || NULL == _logic){
        Ret = RET_NOT_OK ;
    }
    else{
        *_logic = READ_BIN(*PORT_REG[_pin->pin_port],_pin->pin_num);
    }
    return Ret ;
}

STD_ReturnType GPIO_PIN_Give_Direction(GPIO_PIN_CONFIG *_pin,GPIO_PIN_DIRECTION _direction){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _pin){
        Ret = RET_NOT_OK ;
    }
    else{
        if(GPIO_PIN_INPUT ==  _direction){
            SET_BIN(*TRIS_REG[_pin->pin_port],_pin->pin_num);
        }
        else if (GPIO_PIN_OUTPUT ==  _direction){
            RESET_BIN(*TRIS_REG[_pin->pin_port],_pin->pin_num);
        }
        else {/*nothing*/}
    }
    return Ret ;
}

STD_ReturnType GPIO_PIN_Toggle_Direction(GPIO_PIN_CONFIG *_pin){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _pin){
        Ret = RET_NOT_OK ;
    }
    else{
        TOGGLE_BIN(*TRIS_REG[_pin->pin_port],_pin->pin_num);
    }
    return Ret ;
}

STD_ReturnType GPIO_PIN_Get_Direction(GPIO_PIN_CONFIG *_pin,GPIO_PIN_DIRECTION *_direction){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _pin || NULL == _direction){
        Ret = RET_NOT_OK ;
    }
    else{
        *_direction = READ_BIN(*TRIS_REG[_pin->pin_port],_pin->pin_num);
    }
    return Ret ;
}


/**************************************Port Functions******************************************/

STD_ReturnType GPIO_PORT_Initialize(GPIO_PORT_CONFIG *_port){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _port){
        Ret = RET_NOT_OK ;
    }
    else{
        /*Direction Initialization*/
        Ret = GPIO_PORT_Give_Direction(_port,_port->port_direction);
        /*Logic Initialization*/
        Ret = GPIO_PORT_Write_logic(_port,_port->port_logic);
    }
    return Ret ;
}

STD_ReturnType GPIO_PORT_Write_logic(GPIO_PORT_CONFIG *_port,uint8 _logic){
    STD_ReturnType Ret = RET_OK ;
    
    if(NULL == _port){
        Ret = RET_NOT_OK ;
    }
    else{
        *LAT_REG[_port->port_num] = _logic ;
    }
    return Ret ;
}

STD_ReturnType GPIO_PORT_Toggle_logic(GPIO_PORT_CONFIG *_port){
    STD_ReturnType Ret = RET_OK ;
    uint8 count ;
    if(NULL == _port || NULL == _port){
        Ret = RET_NOT_OK ;
    }
    else{
        *LAT_REG[_port->port_num] = ~(*LAT_REG[_port->port_num]) ;
    }
    return Ret ;
}

STD_ReturnType GPIO_PORT_Read_Logic(GPIO_PORT_CONFIG *_port,uint8 *_logic){
    STD_ReturnType Ret = RET_OK ;
    uint8 count ;
    if(NULL == _port || NULL == _logic){
        Ret = RET_NOT_OK ;
    }
    else{
        *_logic = *PORT_REG[_port->port_num];
    }
    return Ret ;
}

STD_ReturnType GPIO_PORT_Give_Direction(GPIO_PORT_CONFIG *_port,uint8 _direction){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _port){
        Ret = RET_NOT_OK ;
    }
    else{
        *TRIS_REG[_port->port_num] = _direction ;
    }
    return Ret ;
}

STD_ReturnType GPIO_PORT_Toggle_Direction(GPIO_PORT_CONFIG *_port){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _port){
        Ret = RET_NOT_OK ;
    }
    else{
        *TRIS_REG[_port->port_num] = ~(*TRIS_REG[_port->port_num]) ;
    }
    return Ret ;
}

STD_ReturnType GPIO_PORT_Get_Direction(GPIO_PORT_CONFIG *_port,uint8 *_direction){
    STD_ReturnType Ret = RET_OK ;
    if(NULL == _port || NULL == _direction){
        Ret = RET_NOT_OK ;
    }
    else{
        *_direction = *TRIS_REG[_port->port_num] ;
    }
    return Ret ;
}

