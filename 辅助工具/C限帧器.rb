#!/usr/bin/env ruby -w
# encoding: UTF-8
class C限帧器#每帧调用一次, 控制每秒最高帧数
  attr_reader :最高帧数, :每帧长度
  def initialize(最高帧数)
    @最高帧数, @每帧长度, @上次调用时间 = 最高帧数, (1.0 / 最高帧数), Time.now
  end
  def 调用
    间隔 = Time.now - @上次调用时间
    暂停时长 = @每帧长度 - 间隔
    #输出 "#{间隔}   #{暂停时长}"
    暂停(暂停时长) if 间隔 < @每帧长度
    @上次调用时间 = Time.now
  end
end
