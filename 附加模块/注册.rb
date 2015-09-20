#!/usr/bin/env ruby -w
# encoding: UTF-8
根路径 = File.dirname(__FILE__)

注册模块('单元测试', "#{根路径}/单元测试", true)

注册模块('数据分析', "#{根路径}/数据分析")
注册模块('Tk', "#{根路径}/Tk")
