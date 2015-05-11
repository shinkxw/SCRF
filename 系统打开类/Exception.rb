#!/usr/bin/env ruby -w
# encoding: UTF-8
class Exception
  def 来源;分析堆栈 0 end
  def 堆栈;backtrace.map{|堆栈信息| 分析堆栈信息(堆栈信息)} if backtrace end
  def 输出堆栈;tap{堆栈.each{|str| 输出 str} if backtrace} end
  def 分析堆栈(堆栈索引); 分析堆栈信息(backtrace[堆栈索引]) if backtrace end
  def 分析堆栈信息(堆栈信息)
    str_arr = 堆栈信息.分割(':in `')
    /\/(?<class_name>[^\/]+)\.rb:(?<line>.+)$/ =~ str_arr[0]
    method_name = str_arr[1].chop
    "类: #{class_name ? class_name + '  ' + line : '无'}    方法: #{method_name}"
  end
  def 输出类名;tap{输出 类名} end
  def 输出信息;tap{输出 信息} end
  alias :信息 :message
end