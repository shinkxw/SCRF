#!/usr/bin/env ruby -w
# encoding: UTF-8
class Class
  alias :新建 :new
  alias :超类 :superclass
  alias :父类 :superclass
  alias :字符串 :to_s
  def 批量新建(参数数组);参数数组.收集{|参数| 新建(*参数)} end
end