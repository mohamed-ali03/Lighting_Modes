# Lighting Mode Control System

This project demonstrates how to control lighting patterns using a microcontroller and GPIO pins. It features multiple lighting modes that can be switched via an external interrupt.

## Features
- **Lighting Modes**: The system supports 5 different lighting modes:
  - **Off Mode**: All lights are off.
  - **Forward Mode**: Lights turn on sequentially in a forward direction.
  - **Reverse Mode**: Lights turn on sequentially in a reverse direction.
  - **Alternating Mode**: Lights alternate between two patterns (`0xAA` and `0x55`).
  - **On/Off Mode**: Lights toggle between all on (`0xFF`) and all off (`0x00`).

- **Interrupt-Driven**: The modes are switched using an interrupt signal on `PORTB PIN0`, which triggers a mode change each time it occurs.

- **GPIO Control**: The system uses GPIO ports to control an array of LEDs or other lighting devices.

## Hardware Requirements
- A microcontroller with GPIO ports.
- 8 LEDs or an equivalent lighting device connected to **PORTC**.
- An interrupt button connected to **PORTB PIN0** for mode switching.

## Software Requirements
- C programming language (compiler supporting the microcontroller).
- GPIO library to interface with the microcontroller's I/O pins.
- Delay function (e.g., `__delay_ms`) for managing time between lighting changes.

## Code Overview

### Main Function:
- Initializes the system and configures the GPIO ports.
- Monitors the interrupt flag and changes the lighting mode based on the current flag value.

### Interrupt Service Routine (ISR):
- Increments the `flag` variable each time an interrupt is triggered. The flag value determines which lighting pattern to execute.

### Modes:
- **Off Mode (`flag = 0`)**: All LEDs are turned off.
- **Forward Mode (`flag = 1`)**: LEDs turn on sequentially from 1 to 128.
- **Reverse Mode (`flag = 2`)**: LEDs turn on sequentially from 128 to 1.
- **Alternating Mode (`flag = 3`)**: LEDs alternate between `0xAA` (10101010) and `0x55` (01010101).
- **On/Off Mode (`flag = 4`)**: LEDs toggle between fully on (`0xFF`) and fully off (`0x00`).

### Initialization:
- Configures GPIO pins and interrupt setup to handle the lighting pattern transitions.

## How to Use:
1. Connect 8 LEDs to the corresponding pins on **PORTC** of the microcontroller.
2. Set up an interrupt button on **PORTB PIN0** to trigger the mode change.
3. Upload the code to your microcontroller.
4. Press the interrupt button to switch between different lighting modes.

## Example Lighting Sequence:
- **Press button** → Mode 1: LEDs light up sequentially from left to right.
- **Press button again** → Mode 2: LEDs light up sequentially from right to left.
- **Press button again** → Mode 3: LEDs alternate between `0xAA` and `0x55`.
- **Press button again** → Mode 4: LEDs toggle between on and off.

## License:
This project is open source and distributed under the MIT License. Feel free to modify and use it as you like.
