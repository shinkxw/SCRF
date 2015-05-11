#!/usr/bin/env ruby -w
# encoding: UTF-8
class E异常 < Exception
  attr_reader :异常类型, :异常信息, :转换历史
  def initialize(异常类型 = '', 异常信息 = '')
    @异常类型,@异常信息,@是否处理 = 异常类型,异常信息,false
    @转换历史 = [[@异常类型, @异常信息]]
  end
  def 来源; 分析堆栈 1 end
  def 信息; "异常类型: #{@异常类型}\n异常信息: #{@异常信息}" end
  def 为?(异常类型, 异常信息 = nil)
    异常类型 == @异常类型 && (异常信息 == nil || 异常信息 == @异常信息)
  end
  def 转换(异常类型, 异常信息 = nil)
    @异常类型 = 异常类型
    @异常信息 = 异常信息 if 异常信息
    @转换历史 << [@异常类型, @异常信息]
    self
  end
  def 输出转换历史
    转换历史.每个{|历史| 输出 "异常类型: #{历史[0]} 异常信息: #{历史[1]}"}
  end
  def 处理完毕; @是否处理 = true end
  def 并未处理?; !@是否处理 end
end