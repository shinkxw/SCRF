#!/usr/bin/env ruby -w
# encoding: UTF-8
module S内存分析
  def self.类对象数量分析
    R哈希.新建(0).自己{|哈希| R对象空间.每个对象{|对象| 哈希[对象.类] += 1}}.排序根据{|_, 数量| 数量}.逆序.哈希化
  end
end
