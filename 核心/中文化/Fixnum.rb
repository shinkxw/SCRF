#!/usr/bin/env ruby -w
# encoding: UTF-8
class Fixnum
  alias :整数化 :to_i
  alias :浮点化 :to_f
  alias :字符串 :to_s
end