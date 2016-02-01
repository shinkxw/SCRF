#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'D矩形区域'
class D矩形
  def self.随机(长, 宽);D矩形.新建(rand(长), rand(宽)) end
  可读属性 :长, :宽#对应x, y二轴
  def 初始化(长, 宽);@长, @宽 = 长, 宽 end
  def 等于?(矩形);@长 == 矩形.长 && @宽 == 矩形.宽 end
  def 面积;@长 * @宽 end
  def 转换为区域(坐标);D矩形区域.新建(坐标.变动(-@长/2,-@宽/2),坐标.变动(@长/2,@宽/2)) end
end
