#!/usr/bin/env ruby -w
# encoding: UTF-8
class Proc
  alias :调用 :call
  alias :参数 :parameters
  alias :参数个数 :arity
  alias :源代码地址 :source_location
  alias :函数化 :to_proc
  alias :字符串 :to_s
end
