﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'D二维点'
class K图表
  可读属性 :宽, :高, :画布
  def 初始化(父界面 = nil, 宽 = 600, 高 = 400, y轴逆转 = true)
    @宽, @高, @y轴逆转 = 宽, 高, y轴逆转
    父界面 = Tk主界面.创建("图表", 宽, 高) unless 父界面
    @画布 = Tk画布.创建(父界面, 宽, 高).打包
  end
  def 点(x, y);D二维点.新建(x,y) end
  def 线段(*点集);Tkc线段.创建(@画布, *点集.收集{|点| 点转换(点)}) end
  def 文本(起点, 文本);Tkc文本.创建(@画布, 点转换(起点)).文本 = 文本 end
  def 点转换(点);(@y轴逆转 ? D二维点.新建(点.x, @高 - 点.y) : 点) end
  def 显示;Tk.运行 end
end
