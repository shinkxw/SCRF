#!/usr/bin/env ruby -w
# encoding: UTF-8
module Kernel
  alias :加载 :load
  alias :需要 :require
  alias :需要类 :require_relative
  alias :需要模块 :require_relative
  alias :退出 :exit
  alias :引发 :raise
  alias :捕获 :catch
  alias :抛出 :throw
  alias :打开 :open
  alias :随机 :rand
  alias :系统执行 :system
  alias :调用信息 :caller
  alias :循环 :loop
  alias :函数 :proc
  alias :暂停 :sleep
  alias :信号捕获 :trap
  alias :格式化 :format
  alias :作用域 :binding
  alias :上下文 :binding
  alias :提供了块? :block_given?
end