#!/usr/bin/env ruby -w
# encoding: UTF-8
module Enumerable
  def 字符串;'[' << collect{|子对象| 子对象.字符串}.join(', ') << ']' end
  alias :全部? :all?
  alias :有些? :any?
  alias :含有? :include?
  alias :包含? :include?
  alias :数量 :count
  alias :寻找 :find
  alias :找出全部 :select
  alias :收集 :collect
  alias :检索 :grep
  alias :注入 :inject
  alias :最大值 :max
  alias :最大值根据 :max_by
  alias :最小值 :min
  alias :最小值根据 :min_by
  alias :划分 :partition
  alias :排序 :sort
  alias :排序根据 :sort_by
  alias :打包 :zip
  alias :循环 :cycle
  def 每个(&块); each(&块) end
end
