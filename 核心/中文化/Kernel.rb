#!/usr/bin/env ruby -w
# encoding: UTF-8
module Kernel
  alias :需要 :require
  alias :需要类 :require_relative
  alias :需要模块 :require_relative
  alias :引发 :raise
  alias :打开 :open
  alias :随机 :rand
  alias :调用信息 :caller
  alias :循环 :loop
  alias :暂停 :sleep
  alias :格式化 :format
  alias :作用域 :binding
  alias :上下文 :binding
  alias :提供了块? :block_given?
end