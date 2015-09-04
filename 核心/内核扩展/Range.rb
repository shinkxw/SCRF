#!/usr/bin/env ruby -w
# encoding: UTF-8
class Range
  def 差值; 终点 - 起点 end
  def 随机; 起点 + Kernel.rand(终点 - 起点 + 1) end
end