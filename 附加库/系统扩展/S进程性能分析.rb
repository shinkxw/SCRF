#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'ruby-wmi'
module S进程性能分析
  C接口 = WMI::Win32_PerfFormattedData_PerfProc_Process
  def self.获取分析数据(*参数);C接口.find(*参数) end
  def self.获取所有分析数据;C接口.find end
  def self.获取指定进程分析数据(*进程id数组)
    C接口.find(:all, :conditions => { :IDProcess => 进程id数组 }).收集{|数据| [数据.进程id, 数据]}.哈希化
  end
  class RubyWMI::Win32_PerfFormattedData_PerfProc_Process
    alias :所有属性 :attributes
    def 进程id;id_process end
    def 名称;name end
    def 处理器时间百分比;percent_processor_time end
  end
end
