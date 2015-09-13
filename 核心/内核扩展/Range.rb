#!/usr/bin/env ruby -w
# encoding: UTF-8
class Range
  def 差值; 终点 - 起点 end
  def 随机; 起点 + rand(终点 - 起点 + 1) end
  def 扩大化#19..456 => 0..500
    差值单位 = 10**R数学.log10(差值).向下取整
    下限 = (起点.浮点化 / 差值单位).向下取整 * 差值单位
    上限 = (终点.浮点化 / 差值单位).向上取整 * 差值单位
    R范围.新建(下限, 上限)
  end
  alias :取样 :随机
end