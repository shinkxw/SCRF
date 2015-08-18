#!/usr/bin/env ruby -w
# encoding: UTF-8
class K点 < D二维点
  def 旋转弧度(弧度 = R数学::PI / 4)
    x = (R数学.cos(弧度)* @x - R数学.sin(弧度) * @y).四舍五入
    y = (R数学.cos(弧度)* @y + R数学.sin(弧度) * @x).四舍五入
    类.新建(x, y)
  end
end