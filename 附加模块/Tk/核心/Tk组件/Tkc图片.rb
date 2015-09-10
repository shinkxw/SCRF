#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc图片
  def self.创建(画布, 起点)
    新建(画布, 起点.x, 起点.y)
  end
  定义映射方法(anchor: '锚定', image: '图片')
  定义映射方法(activeimage: '活动时图片', disabledimage: '禁用时图片')
end