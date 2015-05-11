#!/usr/bin/env ruby -w
# encoding: UTF-8
class K点 < D二维点
  def 旋转弧度(弧度 = Math::PI / 4)
    x = (Math.cos(弧度)* @x - Math.sin(弧度) * @y).四舍五入
    y = (Math.cos(弧度)* @y + Math.sin(弧度) * @x).四舍五入
    K点.new(x, y)
  end
end