#!/usr/bin/env ruby -w
# encoding: UTF-8
module Enumerable
  def 字符串;'[' << 收集{|子对象| 子对象.字符串}.连接(', ') << ']' end
  def 平均值;注入(&:+) / 数量 end
end
