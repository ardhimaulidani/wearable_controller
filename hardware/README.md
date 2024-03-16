## Wearable Controller Board
This board used for the controller of wearable device  
There are 3 boards that used in this wearable device  
1. Mainboard     : used to place all of the important components   
2. IMU Board     : used to place WT901 IMU sensor on top of the fan  
3. Button Board  : used to place Button according to pilot hand sizes  

You can purchase this wearable from [![Generic badge](https://img.shields.io/badge/Toko-Bangunan-<COLOR>.svg)](https://my.its.ac.id/) 
>Electronic Specs
````
USB input voltage : 4.5-5.5V
Charging current  : 580mA (changeable using rpog in tp4056 circuit)
Battery           : 3.7V 2000mAh LiPo battery
Min batt voltage  : 3.8V
Max Current       : 230mA
Battery life      : +- 6hours
Wifi Frequency    : 2.4ghz
````
>LED indicator meaning
````
PWR Red LED     : power indicator
STAT Blue LED   : connected
WT901 Green LED : power indicator for imu sensor
STBY Green LED  : battery fully charged
CHRG Red LED    : battery charged
````
>Component List
#### Mainboard  
|Parts Name                           |Parts Number         |Qty  |
|-------------------------------------|---------------------|-----|
|ESP32 Wroom                          |ESP32                |  1  |
|TP4056 Charging IC                   |TP4056               |  1  |
|BA033 Low Dropout voltage regulator  |BA033                |  1  |
|LED 0805                             |PWR, STAT, CHRG, STBY|  4  |
|R330 ohm 0805                        |R2, R4, R5, R6, R7   |  5  |
|R10K ohm 0805                        |R1, R3, R8, R9       |  4  |
|R2K ohm 0805                         |RPROG                |  1  |
|C10uF 0805                           |C2                   |  1  |
|C1uF 0805                            |C1                   |  1  |
|1n4148 smd                           |D1                   |  1  |
|ss8050 sot23 NPN transistor          |Q1                   |  1  |
|SPDT micro switch smd                |SW                   |  1  | 
|USB female micro B                   |J1                   |  1  |
|JST PH2 male female smd connector    |BAT,                 |  1  |
|JST PH3 male female smd connector    |KNTRL                |  1  |
|JST PH4 male female smd connector    |PROG, WT901          |  2  |
#### IMU Board  
|Parts Name                           |Parts Number         |Qty  |
|-------------------------------------|---------------------|-----|
|WT901 IMU Sensor                     |         -           |  1  |
|LED 0805                             |LED1                 |  1  |
|R330 ohm 0805                        |R1                   |  1  |
|JST PH4 male female smd connector    |J1                   |  1  |
#### Button Board  
|Parts Name                           |Parts Number         |Qty  |
|-------------------------------------|---------------------|-----|
|JST PH3 male female smd connector    |J1                   |  1  |
|Silent Push Button 6x6x5mm smd       |SW1, SW2             |  2  |
#### 3D Printed Part
|Parts Name                           |Parts Number         |Qty  |
|-------------------------------------|---------------------|-----|
|Micro vibration motor 3v 10x2mm      |          -          |  1  |
|5v mini fan 30*30mm                  |          -          |  1  |
|10K potentiometer                    |          -          |  3  |

