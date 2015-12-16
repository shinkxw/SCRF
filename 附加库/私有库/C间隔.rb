#!/usr/bin/env ruby -w
# encoding: UTF-8
class C间隔
  @实例哈希 = {}
  def self.间隔(名称 = '默认', &块)
    @实例哈希[名称] = 新建 unless @实例哈希.含有键?(名称)
    @实例哈希[名称].间隔(&块)
  end
  可读属性 :名称
  def 初始化;@上次记录时间 = R进程.单调时钟时间 end
  def 间隔
    间隔时间 = R进程.单调时钟时间 - @上次记录时间
    yield(间隔时间) if 提供了块?
    @上次记录时间 = R进程.单调时钟时间
    间隔时间
  end
end
