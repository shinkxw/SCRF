#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc位图
  def self.创建(画布, 起点)
    新建(画布, 起点.x, 起点.y)
  end
  定义映射方法(anchor: '锚定', bitmap: '位图', background: '背景色', foreground: '前景色')
  定义映射方法(activebitmap: '活动时位图', disabledbitmap: '禁用时位图')
  定义映射方法(activebackground: '活动时背景色', disabledbackground: '禁用时背景色')
  定义映射方法(activeforeground: '活动时前景色', disabledforeground: '禁用时前景色')
end