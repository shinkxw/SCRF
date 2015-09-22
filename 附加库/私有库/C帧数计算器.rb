﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'C间隔'
class C帧数计算器
  可读属性 :计算周期, :帧数
  def 初始化(计算周期 = 30, &帧数回调)
    @计算周期, @调用次数, @帧数, @间隔实例, @帧数回调 = 计算周期, 0, 0, C间隔.新建, 帧数回调
  end
  def 调用;计算帧数 if (@调用次数 += 1) >= @计算周期 end
  def 计算帧数
    计算间隔 = @间隔实例.间隔
    #输出 "#{@调用次数}   #{计算间隔}"
    @帧数, @调用次数 = @调用次数 / 计算间隔, 0
    @帧数回调[@帧数] if @帧数回调 != nil
  end
end

定义测试集 '帧数计算器测试' do  
  添加测试 '帧数精度测试' do
    调用次数 = 10
    帧数计算器 = C帧数计算器.新建(调用次数)
    消耗时间 = 耗时{调用次数.次{暂停(0.01);帧数计算器.调用}}
    (调用次数 / 消耗时间 - 帧数计算器.帧数).绝对值 < 0.1
  end
  
  添加测试 '帧数回调测试' do
    帧数计算器 = C帧数计算器.新建(10){|帧数| return true if 帧数 > 50}
    9999.次{暂停(0.01);帧数计算器.调用}
    return false
  end
end