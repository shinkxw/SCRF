#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'K可视化组件'
class TK标签 < K可视化组件
  def 实例指令;"TkLabel.new(父实例).pack" end
  def 文本=(文本);实例.text(文本) end
  def 设置变量(tk变量);实例.textvariable(tk变量) end
  def 设置字体(字体);实例.font(字体) end
end
TK变量 = TkVariable
class TkVariable
  alias :值= :value=
end