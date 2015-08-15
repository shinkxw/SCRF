#!/usr/bin/env ruby -w
# encoding: UTF-8
class Numeric
  def 较小(other); self < other ? self : other end
  def 较大(other); self > other ? self : other end
  def 最小二指数; 0.upto(50){|i| return 2**i if 2**i >= self} end
  def 平方; self**2 end
  def 开根; Math.sqrt(self) end
  alias :绝对值 :abs
  alias :向上取整 :ceil
  alias :向下取整 :floor
  alias :四舍五入 :round
  alias :字符串 :to_s
end