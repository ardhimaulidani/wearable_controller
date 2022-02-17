
#include <string.h>
#include <stdio.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "driver/uart.h"
#include "driver/gpio.h"
#ifndef __AHRSREG_H
#define __AHRSREG_H

//Define Register 
#define SAVE 				0x00
#define CALSW 				0x01
#define RSW 				0x02
#define RRATE				0x03
#define BAUD 				0x04
#define AXOFFSET			0x05
#define AYOFFSET			0x06
#define AZOFFSET			0x07
#define GXOFFSET			0x08
#define GYOFFSET			0x09
#define GZOFFSET			0x0a
#define HXOFFSET			0x0b
#define HYOFFSET			0x0c
#define HZOFFSET			0x0d

#define MMYY				0x30
#define HHDD				0x31
#define SSMM				0x32
#define MS					0x33
#define AX					0x34
#define AY					0x35
#define AZ					0x36
#define GX					0x37
#define GY					0x38
#define GZ					0x39
#define HX					0x3a
#define HY					0x3b
#define HZ					0x3c			
#define Roll				0x3d
#define Pitch				0x3e
#define Yaw					0x3f
#define TEMP				0x40
#define Q0					0x51
#define Q1					0x52
#define Q2					0x53
#define Q3					0x54


struct Time
{
	unsigned char Year;
	unsigned char Month;
	unsigned char Day;
	unsigned char Hour;
	unsigned char Minute;
	unsigned char Second;
	unsigned short MiliSecond;
};

struct Acc
{
	short a[3];
	short T;
};

struct Gyro
{
	short w[3];
	short T;
};

struct Angle
{
	short Angle[3];
	short Version;
};

struct Mag
{
	short h[3];
	short T;
};

struct Quaternion
{
	short q[4];
	short T;
};

extern struct Time			IMUTime;
extern struct Acc 			IMUAcc;
extern struct Gyro 			IMUGyro;
extern struct Angle 		IMUAngle;
extern struct Mag 			IMUMag;
extern struct Quaternion	IMUQuaternion;

void uart_config(short uart_port, short txd_pin, short rxd_pin, uint32_t baud_rate, uint16_t buf_size);

#endif
