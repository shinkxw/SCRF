#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'C间隔'
class C固定间隔器
  可读属性 :固定间隔
  def 初始化(固定间隔);@固定间隔 = 固定间隔 end
  def 固定间隔
    @间隔实例 = C间隔.新建
    循环{进行调用;yield}
  end
  私有方法
  def 进行调用;@间隔实例.间隔{|间隔时间| 补时(间隔时间)} end
  def 补时(间隔时间);暂停(@固定间隔 - 间隔时间) if 间隔时间 < @固定间隔 end
end
