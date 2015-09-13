#!/usr/bin/env ruby -w
# encoding: UTF-8
class Range
  alias :起点 :begin
  alias :终点 :end
  alias :前 :first
  alias :后 :last
  alias :大小 :size
  alias :数量 :size
  alias :最大值 :max
  alias :最小值 :min
  alias :覆盖? :cover?#("a".."z").cover?("cc")  #=> true
  alias :包含? :include?#("a".."z").include?("cc")  #=> false
  alias :步进 :step
  alias :数组化 :to_a
  alias :字符串 :to_s
  alias :每个 :each
end