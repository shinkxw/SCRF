#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'sys/proctable'
S进程 = Sys::ProcTable
class << S进程
  alias :获取 :ps
  alias :每个 :ps
  alias :所有进程 :ps
  alias :所有字段 :fields
  def 当前进程;获取(R进程.pid) end
end
class Struct::ProcTableStruct
  def 父进程;S进程.获取(ppid) end
  alias :标题 :caption
  alias :命令行 :cmdline
  alias :注释 :comm
  alias :创建类名 :creation_class_name
  alias :创建日期 :creation_date
  alias :用户名 :cs_name
  alias :描述 :description
  alias :执行路径 :executable_path
  alias :执行状态 :execution_state
  alias :句柄 :handle
  alias :句柄数 :handle_count
  alias :名称 :name
  alias :操作系统名称 :os_name
  alias :优先级 :priority
  alias :编号 :pid
  alias :线程数 :thread_count
end
