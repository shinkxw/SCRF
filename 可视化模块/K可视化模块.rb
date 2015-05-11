#!/usr/bin/env ruby -w
# encoding: UTF-8
#工作区(主界面) <- 元素池 <- 中间元素(代理元素-TK元素) <- 指令集合(暂缓执行)
需要 'tk'
module K可视化模块
  @@主界面, @@未实例化组件 = nil, []
  def self.待实例组件;@@未实例化组件.复制 end
  def self.全部实例化;待实例组件.每个(&:实例) end
  def self.运行;全部实例化;Tk.mainloop end
end