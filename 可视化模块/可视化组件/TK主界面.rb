#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'K可视化组件'
class TK主界面 < K可视化组件
  可读属性 :标题, :宽, :高, :左位移, :上位移
  def initialize(标题 = "", 宽 = 600, 高 = 400, 左位移 = 200, 上位移 = 160)
    super(nil); @标题, @宽, @高, @左位移, @上位移 = 标题, 宽, 高, 左位移, 上位移; @@主界面 = self
  end
  def 实例指令;"TkRoot.新建{title '#{@标题}'; geometry('#{@宽}x#{@高}+#{@左位移}+#{@上位移}')}" end
end
