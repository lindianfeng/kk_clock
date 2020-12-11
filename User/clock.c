/*
 * clock.c
 *
 *  Created on: Dec 10, 2020
 *      Author: linhao
 */

#include "clock.h"
#include <string.h>
#include <stdio.h>

#include "max7219.h"
#include "ds3231.h"
#include "utils.h"
#include "stm32f1xx_hal.h"

extern RTC_Data rtc;

const uint8_t numbers_5x8[][8] = {
    { 0x70, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x70 },  //0
    { 0x20, 0x60, 0x20, 0x20, 0x20, 0x20, 0x20, 0x70 },  //1
    { 0x70, 0x88, 0x08, 0x08, 0x10, 0x20, 0x40, 0xf8 },  //2
    { 0x70, 0x88, 0x08, 0x30, 0x08, 0x08, 0x88, 0x70 },  //3
    { 0x08, 0x18, 0x28, 0x48, 0x88, 0xf8, 0x08, 0x08 },  //4
    { 0xf8, 0x80, 0x80, 0xf0, 0x08, 0x08, 0x88, 0x70 },  //5
    { 0x70, 0x88, 0x80, 0xf0, 0x88, 0x88, 0x88, 0x70 },  //6
    { 0xf8, 0x08, 0x08, 0x10, 0x20, 0x40, 0x40, 0x40 },  //7
    { 0x70, 0x88, 0x88, 0x70, 0x88, 0x88, 0x88, 0x70 },  //8
    { 0x70, 0x88, 0x88, 0x88, 0x78, 0x08, 0x88, 0x70 }   //9
};

const uint8_t numbers_3x5[10][8] = {
    { 0x00, 0x00, 0x00, 0xe0, 0xa0, 0xa0, 0xa0, 0xe0 },  //0
    { 0x00, 0x00, 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },  //1
    { 0x00, 0x00, 0x00, 0xe0, 0x20, 0xe0, 0x80, 0xe0 },  //2
    { 0x00, 0x00, 0x00, 0xe0, 0x20, 0xe0, 0x20, 0xe0 },  //3
    { 0x00, 0x00, 0x00, 0xa0, 0xa0, 0xe0, 0x20, 0x20 },  //4
    { 0x00, 0x00, 0x00, 0xe0, 0x80, 0xe0, 0x20, 0xe0 },  //5
    { 0x00, 0x00, 0x00, 0xe0, 0x80, 0xe0, 0xa0, 0xe0 },  //6
    { 0x00, 0x00, 0x00, 0xe0, 0x20, 0x20, 0x20, 0x20 },  //7
    { 0x00, 0x00, 0x00, 0xe0, 0xa0, 0xe0, 0xa0, 0xe0 },  //8
    { 0x00, 0x00, 0x00, 0xe0, 0xa0, 0xe0, 0x20, 0xe0 }   //9
};

const uint8_t signs[][8] = {
    { 0x00, 0x80, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00 },  //:
    { 0x3c, 0x42, 0xa5, 0x81, 0xa5, 0x99, 0x42, 0x3c },  //笑脸
    { 0x3c, 0x42, 0xa5, 0x81, 0xbd, 0x81, 0x42, 0x3c },  //标准脸
    };

static uint8_t* get_time_frame_data(void) {
  static uint8_t time_frame_data[FRAME_DATA_SIZE] = { 0 };
  const uint8_t hour_1st = rtc.Hour / 10;
  const uint8_t hour_2nd = rtc.Hour % 10;

  const uint8_t minute_1st = rtc.Min / 10;
  const uint8_t minute_2nd = rtc.Min % 10;

  const uint8_t second_1st = rtc.Sec / 10;
  const uint8_t second_2nd = rtc.Sec % 10;

  memset(time_frame_data, 0, sizeof(FRAME_DATA_SIZE));

  for (uint8_t i = 0; i < 8; i++) {
    for (uint8_t j = 0; j < LED_NUM; j++) {
      uint8_t *data = time_frame_data + i * LED_NUM + j;
      switch (j) {
        case 0:
          *data = numbers_5x8[hour_1st][i] | ((numbers_5x8[hour_2nd][i]) >> 5);
          break;
        case 1:
          *data = numbers_5x8[hour_2nd][i] << 3 | ((1 ? signs[0][i] : 0) >> 3) | ((numbers_5x8[minute_1st][i]) >> 5);
          break;
        case 2:
          *data = (numbers_5x8[minute_1st][i] << 3) | (numbers_5x8[minute_2nd][i] >> 2);
          break;
        case 3:
          *data = (numbers_3x5[second_1st][i]) >> 1 | ((numbers_3x5[second_2nd][i]) >> 5);
          break;
      }
    }
  }

  return time_frame_data;
}

static uint8_t* get_date_frame_data(void) {
  static uint8_t date_frame_datas[FRAME_DATA_SIZE] = { 0 };
  const uint8_t month_1st = rtc.Month / 10;
  const uint8_t month_2nd = rtc.Month % 10;

  const uint8_t day_1st = rtc.Day / 10;
  const uint8_t day_2nd = rtc.Day % 10;
  const uint8_t day_of_week = rtc.DaysOfWeek;

  memset(date_frame_datas, 0, sizeof(FRAME_DATA_SIZE));

  for (uint8_t i = 0; i < 8; i++) {
    for (uint8_t j = 0; j < LED_NUM; j++) {
      uint8_t *data = date_frame_datas + i * LED_NUM + j;
      switch (j) {
        case 0:
          *data = numbers_5x8[month_1st][i] | ((numbers_5x8[month_2nd][i]) >> 5);
          break;
        case 1:
          *data = numbers_5x8[month_2nd][i] << 3 | (signs[3][i] >> 3) | ((numbers_5x8[day_1st][i]) >> 6);
          break;
        case 2:
          *data = (numbers_5x8[day_1st][i] << 2) | (numbers_5x8[day_2nd][i] >> 3);
          break;
        case 3:
          *data = ((numbers_3x5[day_of_week][i]) >> 4);
          break;
      }
    }
  }

  return date_frame_datas;
}

//static void modify_frame_data(uint8_t data[LED_NUM * 8],uint8_t row,uint8_t col,uint8_t n){
//  *(date_frame_data + row * LED_NUM + col) = n;
//}

static uint8_t* frame_data_row_to_col(uint8_t *row_frame_data) {
  static uint8_t col_frame_data[FRAME_DATA_SIZE] = { 0 };

  for (int row = 0; row < 32; ++row) {
    for (int col = 0; col < 4; ++col) {

    }
  }

  return col_frame_data;
}

static void shift_down_time_sec_data(uint8_t *time_frame_data) {
  const uint8_t old = *(time_frame_data + 7 * LED_NUM + 3);
  for (int8_t i = 6; i >= 0; i--) {
    uint8_t *data = time_frame_data + i * LED_NUM + 3;
    *(time_frame_data + (i + 1) * LED_NUM + 3) = *data;
  }

  *(time_frame_data + 0 * LED_NUM + 3) = old;
}

static void shift_up_time_sec_data(uint8_t *time_frame_data) {
  const uint8_t old = *(time_frame_data + 0 * LED_NUM + 3);

  for (uint8_t i = 0; i < 7; i++) {
    uint8_t *data = time_frame_data + i * LED_NUM + 3;
    *data = *(time_frame_data + (i + 1) * LED_NUM + 3);
  }

  *(time_frame_data + 7 * LED_NUM + 3) = old;
}

void Clock_Init(void) {
  DS3231_Init();
  Max7219_Init();
}

static uint16_t t = 0;

void Clock_ShowTime(void) {
  if ((t % 5) == 0) {
    rtc.Sec++;
  }

  if (rtc.Sec > 59) {
    rtc.Min++;
    rtc.Sec = 0;
  }

  if (rtc.Min > 59)
      {
    rtc.Hour++;
    rtc.Min = 0;
  }

  static uint8_t *frame_data = NULL;
  static uint8_t move_times = 0;

  if (0 == (t % 3)) {
    frame_data = get_time_frame_data();
    move_times = 0;
  } else {
    if (move_times < 1) {
      shift_up_time_sec_data(frame_data);
      printf("up\r\n");
    } else {
      shift_down_time_sec_data(frame_data);
      printf("down\r\n");
    }
    move_times++;
  }

  Max7219_RenderData(frame_data, FRAME_DATA_SIZE);

  t++;
}

void Clock_ShowDate(void) {
  uint8_t *date_frame_datas = get_date_frame_data();
  Max7219_RenderData(date_frame_datas, FRAME_DATA_SIZE);
}
