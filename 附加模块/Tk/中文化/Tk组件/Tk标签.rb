#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tk标签
  def self.创建(父组件, 文本内容 = '')
    新建(父组件){文本 文本内容}
  end
  定义映射方法(text: '文本', font: '字体')
end