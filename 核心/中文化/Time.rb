#!/usr/bin/env ruby -w
# encoding: UTF-8
class Time
  class << self
    alias :现在 :now
  end
  alias :字符串 :to_s
  alias :整数化 :to_i
  alias :浮点化 :to_f
end