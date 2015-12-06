#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'timeout'
R超时 = Timeout
class << R超时
  alias :超时 :timeout
end

module R内核
  def 限时(限制秒数, 超时异常 = E超时异常, &块);R超时::超时(限制秒数, 超时异常, &块) end
end

class E超时异常 < E异常
  def 初始化(输入);super('超时异常', '运行块超过指定时间') end
end