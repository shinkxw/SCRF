#!/usr/bin/env ruby -w
# encoding: UTF-8
class Array
  def 字符串;'[' << 收集{|子对象| 子对象.字符串}.连接(', ') << ']' end
end