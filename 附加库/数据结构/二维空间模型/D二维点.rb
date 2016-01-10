#!/usr/bin/env ruby -w
# encoding: UTF-8
class D二维点
  可读属性 :x, :y
  def 初始化(x, y);@x,@y = x,y end
  def +(点);类.新建(@x + 点.x, @y + 点.y) end
  def -(点);D二维向量.新建(@x - 点.x, @y - 点.y) end
  def 中点(点);类.新建((@x + 点.x) / 2, (@y + 点.y) / 2) end
  def 取低(点);类.新建(@x.较小(点.x),@y.较小(点.y)) end
  def 取高(点);类.新建(@x.较大(点.x),@y.较大(点.y)) end
  def 距离(点);((@x - 点.x).平方 + (@y - 点.y).平方).开根 end
  def 变动(x,y);类.新建(@x + x, @y + y) end
  def 位移(向量);类.新建(@x + 向量.x, @y + 向量.y) end
  def x变动(x);类.新建(@x + x, @y) end
  def y变动(y);类.新建(@x, @y + y) end
  def 整数化;类.新建(@x.整数化, @y.整数化) end
  def 等于?(点);@x == 点.x && @y == 点.y end
  def 全大于?(点);@x >= 点.x && @y >= 点.y end
  def 全小于?(点);@x <= 点.x && @y <= 点.y end
  def 任意大于?(点);@x >= 点.x || @y >= 点.y end
  def 任意小于?(点);@x <= 点.x || @y <= 点.y end
  def 字符串; "(#{@x}, #{@y})" end
end