#!/usr/bin/env ruby -w
# encoding: UTF-8
class TkCanvas
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
  #~ alias :宽度 :width
  #~ alias :高度 :height
  #~ alias :背景色 :bg
  #~ alias :x轴卷动增量 :xscrollincrement
  #~ alias :y轴卷动增量 :yscrollincrement
end
#~ TkcText#起点
  #~ alias :文本 :text
#~ TkcLine#起点, 终点
  #~ alias :箭头 :arrow#(first,last,both)
#~ TkcRectangle#左上角和底部右下角
#~ TkcOval#边界矩形左上角和底部右下角
  #~ coords