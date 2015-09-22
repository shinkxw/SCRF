﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C间隔
  @实例哈希 = {}
  def self.间隔(名称 = '默认', &块)
    @实例哈希[名称] = self.新建 unless @实例哈希.含有键?(名称)
    @实例哈希[名称].间隔(&块)
  end
  可读属性 :名称
  def 初始化;@上次记录时间 = R时间.现在 end
  def 间隔
    间隔时间 = R时间.现在 - @上次记录时间
    yield(间隔时间) if 提供了块?
    @上次记录时间 = R时间.现在
    间隔时间
  end
end

定义测试集 '间隔测试' do  
  添加测试 '间隔精度测试' do
    间隔 = C间隔.新建
    暂停(0.05)
    (0.04..0.07).包含?(间隔.间隔)
  end
  
  添加测试 '间隔带块测试' do
    间隔 = C间隔.新建
    暂停(0.05)
    (0.04..0.07).包含?(间隔.间隔{暂停(0.03)})
  end
  
  添加测试 '类间隔带块测试' do
    C间隔.间隔('测试')
    暂停(0.05)
    (0.04..0.07).包含?(C间隔.间隔('测试'){暂停(0.03)})
  end
end