#!/usr/bin/env ruby -w
# encoding: UTF-8
class Range
  def 差值; 终点 - 起点 end
  def 随机; 起点 + Kernel.rand(终点 - 起点 + 1) end
  alias :取样 :随机
  alias :起点 :begin
  alias :终点 :end
  alias :前 :first
  alias :后 :last
  alias :大小 :size
  alias :数量 :size
  alias :覆盖? :cover?#("a".."z").cover?("cc")  #=> true
  alias :包含? :include?#("a".."z").include?("cc")  #=> false
  alias :数组化 :to_a
  alias :字符串 :to_s
  alias :每个 :each
end