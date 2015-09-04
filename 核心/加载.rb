#!/usr/bin/env ruby -w
# encoding: UTF-8
根路径 = File.dirname(__FILE__)
require "#{根路径}/系统支持/S脚本加载器"

S脚本加载器.加载("#{根路径}/中文化")
S脚本加载器.加载("#{根路径}/内核扩展")
S脚本加载器.加载("#{根路径}/系统支持")
