#!/usr/bin/env ruby -w
# encoding: UTF-8
当前目录路径 = File.dirname(__FILE__)

注册模块('单元测试', "#{当前目录路径}/单元测试", true)

注册模块('数据分析', "#{当前目录路径}/数据分析")
注册模块('Tk', "#{当前目录路径}/Tk")
