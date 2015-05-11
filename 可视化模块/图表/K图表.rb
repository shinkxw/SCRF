#!/usr/bin/env ruby -w
# encoding: UTF-8
class K图表
  attr_reader :宽, :高, :画布
  def initialize(父界面 = nil, 宽 = 600, 高 = 400)
    父界面 = TK主界面.new("图表", 宽, 高) unless 父界面
    @宽, @高, @画布 = 宽, 高, TK画布.new(父界面, 宽, 高, true)
  end
  def 点(x, y);K点.new(x,y) end
  def 线段(起点, 终点);K线段.new(起点, 终点, @画布) end
  def 文本(起点, 文本);TKC文本.new(@画布, 起点).文本 = 文本 end
  def 显示;K可视化模块.运行 end
end
