#!/usr/bin/env ruby -w
# encoding: UTF-8
require 'time'
class Time
  class << self
    alias :现在 :now
    alias :解析 :parse
  end
  alias :字符串转换 :strftime
  alias :字符串 :to_s
  alias :整数化 :to_i
  alias :浮点化 :to_f
end