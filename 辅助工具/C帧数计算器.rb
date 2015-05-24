﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C帧数计算器
  attr_reader :计算周期, :帧数
  def initialize(计算周期 = 30, &帧数回调)
    @计算周期, @调用次数, @帧数, @上次计算时间, @帧数回调 = 计算周期, 0, 0, Time.now, 帧数回调
  end
  def 调用;计算帧数 if (@调用次数 += 1) >= @计算周期 end
  def 计算帧数
    计算间隔 = Time.now - @上次计算时间
    @帧数 = @调用次数 / 计算间隔
    #输出 "#{@调用次数}   #{计算间隔}"
    @调用次数, @上次计算时间 = 0, Time.now
    @帧数回调[@帧数] if @帧数回调 != nil
  end
end
