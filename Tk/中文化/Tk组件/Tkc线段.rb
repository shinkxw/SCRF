#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc线段
  def self.创建(画布, 起点, 终点)
    新建(画布, 起点.x, 起点.y, 终点.x, 终点.y)
  end
  def 箭头(参数);arrow(参数) end#(first,last,both)
end