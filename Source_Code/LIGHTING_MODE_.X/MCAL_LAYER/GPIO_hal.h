/* 
 * File:   GPIO_hal.h
 * Author: mo ali
 *
 * Created on July 6, 2024, 10:20 AM
 */

#ifndef GPIO_HAL_H
#define	GPIO_HAL_H


/***************************INCLUDES****************************/
#include "pic18f4620.h"
#include "MCAL_STD_Types.h"
#include "Device_Config.h"
/***************************MACRO DECLERATION ****************************/

#define BIT_MASK  1
/***************************MACRO FUNCTION****************************/
#define RESET_BIN(REG_PORT ,BIN_POS)       (REG_PORT &=(~(1<<BIN_POS)))
#define SET_BIN(REG_PORT ,BIN_POS)         (REG_PORT |=(1<<BIN_POS))
#define TOGGLE_BIN(REG_PORT ,BIN_POS)      (REG_PORT ^=(1<<BIN_POS))
#define READ_BIN(REG_PORT ,BIN_POS)        ((REG_PORT>>BIN_POS)& 1)
/***************************DATA TYPE****************************/
volatile uint8 *PORT_REG[] = {&PORTA,&PORTB,&PORTC,&PORTD,&PORTE};
volatile uint8 *TRIS_REG[] = {&TRISA,&TRISB,&TRISC,&TRISD,&TRISE};
volatile uint8 *LAT_REG[]  = {&LATA ,&LATB ,&LATC ,&LATD ,&LATE};

typedef enum {
    GPIO_PIN_LOGIC_LOW = 0 ,
    GPIO_PIN_LOGIC_HIGH
}GPIO_PIN_LOGIC;
typedef enum {
    GPIO_PIN_OUTPUT = 0 ,      
    GPIO_PIN_INPUT   
}GPIO_PIN_DIRECTION;
typedef enum {
    GPIO_PORTA = 0 ,             
    GPIO_PORTB ,           
    GPIO_PORTC ,            
    GPIO_PORTD ,           
    GPIO_PORTE , 
}GPIO_PORTx;
typedef enum {
    GPIO_PIN0 = 0 ,
    GPIO_PIN1 ,
    GPIO_PIN2 ,
    GPIO_PIN3 ,
    GPIO_PIN4 ,
    GPIO_PIN5 ,
    GPIO_PIN6 ,
    GPIO_PIN7            
}GPIO_PINx;


typedef struct {
    GPIO_PIN_LOGIC pin_logic;
    GPIO_PIN_DIRECTION   pin_direction;
    GPIO_PORTx           pin_port;
    GPIO_PINx            pin_num;
}GPIO_PIN_CONFIG;

typedef struct {
    uint8        port_logic;
    uint8        port_direction;
    GPIO_PORTx   port_num;
}GPIO_PORT_CONFIG;

/***************************FUNCTIONS****************************/

/*Pin Initialization */
STD_ReturnType GPIO_PIN_Initialize(GPIO_PIN_CONFIG *_pin);
STD_ReturnType GPIO_PIN_Write_logic(GPIO_PIN_CONFIG *_pin,GPIO_PIN_LOGIC _logic);
STD_ReturnType GPIO_PIN_Toggle_logic(GPIO_PIN_CONFIG *_pin);
STD_ReturnType GPIO_PIN_Readw_Logic(GPIO_PIN_CONFIG *_pin,GPIO_PIN_LOGIC *_logic);
STD_ReturnType GPIO_PIN_Give_Direction(GPIO_PIN_CONFIG *_pin,GPIO_PIN_DIRECTION _direction);
STD_ReturnType GPIO_PIN_Toggle_Direction(GPIO_PIN_CONFIG *_pin);
STD_ReturnType GPIO_PIN_Get_Direction(GPIO_PIN_CONFIG *_pin,GPIO_PIN_DIRECTION *_direction);


/*Port Initialization*/
STD_ReturnType GPIO_PORT_Initialize(GPIO_PORT_CONFIG *_port);
STD_ReturnType GPIO_PORT_Write_logic(GPIO_PORT_CONFIG *_port,uint8 _logic);
STD_ReturnType GPIO_PORT_Toggle_logic(GPIO_PORT_CONFIG *_port);
STD_ReturnType GPIO_PORT_Read_Logic(GPIO_PORT_CONFIG *_port,uint8 *_logic);
STD_ReturnType GPIO_PORT_Give_Direction(GPIO_PORT_CONFIG *_port,uint8 _direction);
STD_ReturnType GPIO_PORT_Toggle_Direction(GPIO_PORT_CONFIG *_port);
STD_ReturnType GPIO_PORT_Get_Direction(GPIO_PORT_CONFIG *_port,uint8 *_direction);

#endif	/* GPIO_HAL_H */

