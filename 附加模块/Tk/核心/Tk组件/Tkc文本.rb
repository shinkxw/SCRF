#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc文本
  def self.创建(画布, 起点)
    新建(画布, 起点.x, 起点.y)
  end
  定义映射方法(text: '文本', font: '字体', underline: '下划线', anchor: '锚定', justify: '对齐')
  定义映射方法(fill: '填充色', offset: '偏移量', stipple: '点画', width: '宽度')
  定义映射方法(activefill: '活动时填充色', disabledfill: '禁用时填充色')
  定义映射方法(activestipple: '活动时点画', disabledstipple: '禁用时点画')
end