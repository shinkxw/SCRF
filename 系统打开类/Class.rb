#!/usr/bin/env ruby -w
# encoding: UTF-8
class Class
  def 批量新建(参数数组);参数数组.收集{|参数| new(*参数)} end
  alias :超类 :superclass
  alias :先祖链 :ancestors
end