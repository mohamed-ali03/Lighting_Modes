/*
 * File:   Lighting_Mode.c
 * Author: Mohamed Ali
 * LinkedIn : https://www.linkedin.com/in/mohamed-ali-a72542316/
 * Created on July 15, 2024, 10:49 AM
 */


#include "Lighting_Mode.h"
STD_ReturnType RET = RET_OK;

uint8 counter = 0 ;
volatile int flag =0 ;

uint8 forwerd_num [] = {1,2,4,8,16,32,64,128};
uint8 reverse_num [] = {128,64,32,16,8,4,2,1};


GPIO_PORT_CONFIG _portc = {
    .port_direction = GPIO_PIN_OUTPUT,
    .port_logic = GPIO_PIN_LOGIC_LOW,
    .port_num = GPIO_PORTC,
};

INTERRUPT_INT0_t _int0 = {
    .pin.pin_direction = GPIO_PIN_INPUT,
    .pin.pin_num = GPIO_PIN0,
    .pin.pin_port = GPIO_PORTB,
    .INTERRUPT_INTx_Edge = INTERRUPT_INT0_RISIGNG_Edge,
    .InterruptHandler = ISR_FUNC
};


int main() {
    Initialize();
    while(1){
        if(flag == 0){
            RET = GPIO_PORT_Write_logic(&_portc,0x00);
        }
        else if(flag ==1 ){
            for(counter = 0 ; counter < 8; counter++){
                RET = GPIO_PORT_Write_logic(&_portc,forwerd_num[counter]);
                __delay_ms(250);
            }
        }
        else if(flag ==2 ){
            for(counter = 0 ; counter < 8; counter++){
                RET = GPIO_PORT_Write_logic(&_portc,reverse_num[counter]);
                __delay_ms(250);
            }
        }
        else if (flag == 3){
            RET = GPIO_PORT_Write_logic(&_portc,0xAA);
            __delay_ms(250);
            RET = GPIO_PORT_Write_logic(&_portc,0x55);
            __delay_ms(250);
        }
        else if(flag == 4){
            RET = GPIO_PORT_Write_logic(&_portc,0xFF);
            __delay_ms(250);
            RET = GPIO_PORT_Write_logic(&_portc,0x00);
            __delay_ms(250);
        }
        else{/*Nothing*/}
    }
    return 0 ;
}


void Initialize (void){
    Interuupt_INT0_Initialize(&_int0);  
    GPIO_PORT_Initialize(&_portc);
}

void ISR_FUNC(void){
    flag++;
    if(flag>4){
        flag = 0;
    }
}