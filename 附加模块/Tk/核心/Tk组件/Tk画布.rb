﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tk画布
  def self.创建(父组件, 宽, 高)
    新建(父组件){宽度 宽;高度 高}
  end
  def 卷动(向量, 卷动单位 = 'units')#page
    x轴卷动(向量.x, 卷动单位) if 向量.x != 0
    y轴卷动(向量.y, 卷动单位) if 向量.y != 0
  end
  def 设置卷动增量(x轴增量, y轴增量)
    x轴卷动增量(x轴增量)
    y轴卷动增量(y轴增量)
  end
  def 全部删除;删除('all') end
  def 记录鼠标坐标
    需要 'D二维点'
    绑定("Motion", 函数{|x, y| @鼠标坐标 = D二维点.新建(x, y)}, "%x %y")
  end
  def 鼠标坐标;@鼠标坐标 end
  alias :删除 :delete
  alias :添加标签 :addtag#标签, 'withtag', (编号|标签)
  alias :删除标签 :deltag#编号, 标签 | 范围标签, 删除标签 | 标签
  alias :移动组件 :move#tag,dx,dy
  alias :移动组件至 :move_to#tag,dx,dy
  alias :改变组件位置 :coords#组件,参数
  alias :提升 :raise#显示优先级
  alias :降低 :lower#显示优先级
  alias :查找 :find
  alias :画布x :canvasx#画布相对点换算为绝对点
  alias :画布y :canvasy#画布相对点换算为绝对点
  alias :x轴卷动 :xview_scroll
  alias :y轴卷动 :yview_scroll
  alias :包围盒 :bbox#所有项目 all
  定义映射方法(width: '宽度', height: '高度', bg: '背景色', bd: '边框宽度')
  定义映射方法(confine: '限制范围', scrollregion: '滚动区域')
  定义映射方法(xscrollincrement: 'x轴卷动增量', yscrollincrement: 'y轴卷动增量')
  定义映射方法(state: '状态', offset: '偏移量', cursor: '光标')
end
#~ ["closeenough", "closeEnough", "CloseEnough", 1, 1.0]#鼠标接近多少算是被认为在项目内
#~ ["relief", "relief", "Relief", "flat", "flat"]#3D样式
#~ ["takefocus", "takeFocus", "TakeFocus", false, false]#是否被当做焦点
#~ ["xscrollcommand", "xScrollCommand", "ScrollCommand", "", ""]#回调
#~ ["yscrollcommand", "yScrollCommand", "ScrollCommand", "", ""]#回调