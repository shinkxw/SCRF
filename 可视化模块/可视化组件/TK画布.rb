﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'K可视化组件'
class TK画布 < K可视化组件
  attr_reader :宽, :高, :背景色
  def initialize(父组件, 宽 = 600, 高 = 400, y轴逆转 = false)
    super(父组件); @宽, @高, @背景色, @y轴逆转 = 宽, 高, 背景色, y轴逆转
  end
  def 实例指令;"TkCanvas.new(父实例){width #{@宽};height #{@高}}.pack" end
  def 背景色=(背景色);实例.bg(背景色) end
  def 点转换(点);(@y轴逆转 ? 点.类.新建(点.x, @高 - 点.y) : 点) end
  def 滚动(向量, 滚动单位 = 'units')#page
    实例.xview_scroll(向量.x, 滚动单位) if 向量.x != 0
    实例.yview_scroll(向量.y, 滚动单位) if 向量.y != 0
  end
end

class K画布组件 < K可视化组件
  def 点转换(点);@父组件.点转换(点) end
  def 移动(向量);父实例.move(实例.id,向量.x,(@y轴逆转 ? 向量.y : -向量.y)) end
end

class TKC线段 < K画布组件
  attr_reader :起点, :终点
  def initialize(画布, 起点, 终点);super(画布); @起点, @终点 = 起点, 终点 end
  def 实例指令
    起点, 终点 = 点转换(@起点), 点转换(@终点)
    "TkcLine.new(父实例, #{起点.x}, #{起点.y}, #{终点.x}, #{终点.y})"
  end
  def 箭头(参数 = 'last');返回自己{实例.arrow(参数)} end#first,last,both
end

class TKC矩形 < K画布组件
  attr_reader :起点, :终点
  def initialize(画布, 起点, 终点);super(画布); @起点, @终点 = 起点, 终点 end
  def 实例指令
    起点, 终点 = 点转换(@起点), 点转换(@终点)
    "TkcRectangle.new(父实例, #{起点.x}, #{起点.y}, #{终点.x}, #{终点.y})"
  end
end

class TKC椭圆 < K画布组件
  attr_reader :左点, :右点#边界矩形左上角和底部右下角
  def initialize(画布, 左点, 右点);super(画布); @左点, @右点 = 左点, 右点 end
  def 实例指令
    左点, 右点 = 点转换(@左点), 点转换(@右点)
    "TkcOval.new(父实例, #{左点.x}, #{左点.y}, #{右点.x}, #{右点.y})"
  end
  def 改变位置(左点, 右点)
    @左点, @右点 = 左点, 右点
    左点, 右点 = 点转换(@左点), 点转换(@右点)
    父实例.coords(实例, 左点.x, 左点.y, 右点.x, 右点.y)
  end
end

class TKC文本 < K画布组件
  attr_reader :起点
  def initialize(画布, 起点);super(画布); @起点 = 起点 end
  def 实例指令
    起点 = 点转换(@起点)
    "TkcText.new(父实例, #{起点.x}, #{起点.y})"
  end
  def 文本=(文本);实例.text(文本) end
end

