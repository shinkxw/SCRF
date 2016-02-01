#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'D圆形区域'
class D圆形
  def self.随机(半径);D圆形.新建(rand(半径)) end
  可读属性 :半径
  def 初始化(半径);@半径 = 半径 end
  def 等于?(圆形);@半径 == 圆形.半径 end
  def 面积;R数学::PI * @半径**2 end
  def 转换为区域(圆心);D圆形区域.新建(圆心, @半径) end
end
