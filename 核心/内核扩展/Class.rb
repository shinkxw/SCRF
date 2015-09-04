#!/usr/bin/env ruby -w
# encoding: UTF-8
class Class
  def 批量新建(参数数组);参数数组.收集{|参数| 新建(*参数)} end
end