﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
根路径 = File.dirname(__FILE__)
$:.unshift("#{根路径}/附加库中文化")
require "#{根路径}/系统支持/S脚本加载器"

S脚本加载器.加载("#{根路径}/系统打开类")

忽略错误 do
  S脚本加载器.加载("#{根路径}/异常类")
  S脚本加载器.加载("#{根路径}/系统支持")
  S脚本加载器.加载("#{根路径}/单元测试")
  S脚本加载器.加载("#{根路径}/数据结构")
  S脚本加载器.加载("#{根路径}/辅助工具")
  
  注册模块('Tk', "#{根路径}/Tk")
  注册模块('性能分析', "#{根路径}/性能分析模块")
end
