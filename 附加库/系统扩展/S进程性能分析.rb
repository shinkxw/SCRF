#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'wmi-lite'
module S进程性能分析
  @基础sql = "select name,idprocess,percentprocessortime from Win32_PerfFormattedData_PerfProc_Process"
  def self.获取所有分析数据;wmi.query(@基础sql) end
  def self.获取指定进程分析数据(*进程id数组)
    sql = @基础sql + " where " + 进程id数组.收集{|id| "idprocess = '#{id}'"}.连接(' or ')
    wmi.query(sql).收集{|数据| [数据.进程id, 数据]}.哈希化
  end
  def self.wmi;@wmi ||= WmiLite::Wmi.new end
  class WmiLite::Wmi::Instance
    def 所有属性;@property_map.所有键 end
    def 所有值;@property_map end
    def 进程id;获取属性('idprocess') end
    def 名称;获取属性('name') end
    def 处理器时间百分比;获取属性('percentprocessortime').整数化 end
    def 获取属性(属性名称);self.[](属性名称) end
  end
end
