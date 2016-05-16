#!/usr/bin/env ruby -w
# encoding: UTF-8
require 'date'
class Date
  class << self
    alias :新建 :new
    alias :今天 :today
    alias :解析 :parse
  end
  alias :字符串转换 :strftime
  alias :字符串 :to_s
end
