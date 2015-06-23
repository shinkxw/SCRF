#!/usr/bin/env ruby -w
# encoding: UTF-8
class D二维点
  attr_reader :x, :y
  def initialize(x, y);@x,@y = x,y end
  def +(点);类.新建(@x + 点.x, @y + 点.y) end
  def -(点);D二维向量.新建(@x - 点.x, @y - 点.y) end
  def 中点(点);类.新建((@x + 点.x) / 2, (@y + 点.y) / 2) end
  def 取低(点);类.新建(@x.较小(点.x),@y.较小(点.y)) end
  def 取高(点);类.新建(@x.较大(点.x),@y.较大(点.y)) end
  def 变动(x,y);类.新建(@x + x, @y + y) end
  def 随机变动(max);变动(rand(max),rand(max)) end
  def x变动(x);类.新建(@x + x, @y) end
  def y变动(y);类.新建(@x, @y + y) end
  def 等于?(点);@x == 点.x && @y == 点.y end
  def 全大于?(点);@x >= 点.x && @y >= 点.y end
  def 全小于?(点);@x <= 点.x && @y <= 点.y end
  def 任意大于?(点);@x >= 点.x || @y >= 点.y end
  def 任意小于?(点);@x <= 点.x || @y <= 点.y end
  def 字符串; "(#{@x}, #{@y})" end
end