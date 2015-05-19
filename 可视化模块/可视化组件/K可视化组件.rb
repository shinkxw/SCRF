#!/usr/bin/env ruby -w
# encoding: UTF-8
class K可视化组件
  include K可视化模块 
  def initialize(父组件)
    @组件池,@父组件 = [],父组件
    父组件.添加子组件(self) if 父组件
    @@未实例化组件 << self
  end
  def 添加子组件(子组件);@组件池 << 子组件 end
  def 实例;@tk实例 ||= 实例化 end
  private 
  def 实例化;@@未实例化组件.delete(self);执行(实例指令, 100) end
  def 父实例;@父组件.实例 end
  def method_missing(方法名, *参数);实例.调用(方法名, *参数) end
end
