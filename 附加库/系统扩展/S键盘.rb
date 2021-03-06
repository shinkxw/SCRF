﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'Win32接口'
module S键盘
  @获取按键状态 = Win32接口.新建("GetAsyncKeyState", 'I', 'I', "user32")
  class << self
    def 按下?(*键名数组);键名数组.所有?{|键名| 调用("按下#{键名}?")} end
    def 按下过?(*键名数组);键名数组.所有?{|键名| 调用("按下过#{键名}?")} end
    def 获取按键数组;@键名数组.找出全部{|键名| 调用("#{键名}?")} end
    class << self
      def 定义按键判断方法(键名, 键值)
        定义方法("按下#{键名}?"){@获取按键状态.请求(键值) & 65535 == 32769}
        定义方法("按下过#{键名}?"){@获取按键状态.请求(键值) & 65535 > 0}
        设置方法别名("#{键名}?", "按下#{键名}?")
      end
    end
  end
  @键名数组 = %w(BACK TAB ENTER SHIFT CTRL ALT PAUSE CAPITAL ESC SPACE PGUP PGDN END HOME)
  @键名数组 += %w(LEFT UP RIGHT DOWN SELECT PRINT SNAPSHOTey INSERT DELETE)
  @键名数组 += %w(0 1 2 3 4 5 6 7 8 9)
  @键名数组 += %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  @键名数组 += %w(F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12)
  @键值数组 = [0x08,0x09,0x0D,0x10,0x11,0x12,0x13,0x14,0x1B,0x20,0x21,0x22,0x23,0x24]
  @键值数组 += [0x25,0x26,0x27,0x28,0x29,0x2A,0x2C,0x2D,0x2E]
  @键值数组 += [0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39]
  @键值数组 += [0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4A,0x4B,0x4C,0x4D]
  @键值数组 += [0x4E,0x4F,0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5A]
  @键值数组 += [0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78,0x79,0x7A,0x7B]
  @键名数组.外转置(@键值数组).每个{|名值对| 单例类.定义按键判断方法(*名值对)}
end
#0000---键当前未处于按下状态，而且自上次调用GetAsyncKeyState后该键也未被按过；
#0001---键当前未处于按下状态，但在此之前（自上次调用GetAsyncKeyState后）键曾经被按过；
#8000 --- 键当前处于按下状态，但在此之前（自上次调用GetAsyncKeyState后）键未被按过；
#8001 --- 键当前处于按下状态，而且在此之前（自上次调用GetAsyncKeyState后）键也曾经被按过