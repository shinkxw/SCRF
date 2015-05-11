﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class K线段
  attr_reader :起点, :终点
  def initialize(起点, 终点, 画布 = nil);@起点, @终点, @画布 = 起点, 终点, 画布 end
  def 缩短为(新长度)
    比例 = 新长度 / 长度
    K线段.new(@起点, K点.new((@终点.x-@起点.x)*比例, (@终点.y-@起点.y)*比例) + @起点, @画布)
  end
  def 旋转为(角度);K线段.new(@起点, ((@终点 - @起点).旋转弧度(角度) + @起点), @画布) end
  def 长度;((@起点.x-@终点.x).平方 + (@起点.y-@终点.y).平方).开根 end
  def 实例化(画布 = @画布);TKC线段.new(画布, 起点.复制, 终点.复制) end
end