#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tk画布
  def self.创建(父组件, 宽, 高)
    新建(父组件){宽度 = 宽;高度 = 高}.pack
  end
  def 卷动(向量, 卷动单位 = 'units')#page
    x轴卷动(向量.x, 卷动单位) if 向量.x != 0
    y轴卷动(向量.y, 卷动单位) if 向量.y != 0
  end
  def 设置卷动增量(x轴增量, y轴增量);x轴卷动增量, y轴卷动增量 = x轴增量, y轴增量 end
  alias :移动组件 :move#tag,dx,dy
  alias :移动组件至 :move_to#tag,dx,dy
  alias :x轴卷动 :xview_scroll
  alias :y轴卷动 :yview_scroll
  alias :改变组件位置 :coords#组件,参数
  定义映射方法(width: '宽度', height: '高度', bg: '背景色')
  定义映射方法(xscrollincrement: 'x轴卷动增量', yscrollincrement: 'y轴卷动增量')
end