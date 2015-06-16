﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C限帧器#每帧调用一次, 控制每秒最高帧数
  attr_reader :最高帧数, :每帧长度, :利用率
  def initialize(最高帧数)
    @最高帧数, @每帧长度, @上次调用时间 = 最高帧数, (1.0 / 最高帧数), Time.now
    @帧数上限, @帧数下限, @修正值 = @最高帧数 + 2, @最高帧数 - 2, 0.01
    @利用率计算周期, @利用率, @调用次数, @累积间隔 = 最高帧数, 1, 0, 0
    @帧数计算器 = C帧数计算器.新建(最高帧数){|帧数| 帧数反馈(帧数)}
  end
  def 当前帧数;@帧数计算器.帧数 end
  def 帧数反馈(帧数)
    if (帧数 < @帧数下限)
      @修正值 += 0.001
    elsif(帧数 > @帧数上限)
      @修正值 -= 0.001
    end
    #输出 "#{帧数}   #{@修正值}"
  end
  def 调用
    间隔 = Time.now - @上次调用时间
    计算利用率(间隔)
    if 间隔 < @每帧长度
      暂停时间 = @每帧长度 - 间隔 - @修正值
      暂停(暂停时间) if 暂停时间 > 0
    end
    @上次调用时间 = Time.now
    @帧数计算器.调用
  end
  def 计算利用率(间隔)
    @累积间隔 += 间隔
    if (@调用次数 += 1) >= @利用率计算周期
      @利用率 = @累积间隔 / (@每帧长度 * @调用次数)
      @利用率 = 1 if @利用率 > 1
      @调用次数, @累积间隔 = 0, 0
    end
  end
end
