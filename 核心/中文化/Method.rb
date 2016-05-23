#!/usr/bin/env ruby -w
# encoding: UTF-8
class Method
  alias :调用 :call
  alias :名称 :name
  alias :原名 :original_name
  alias :参数 :parameters
  alias :参数个数 :arity
  alias :所有者 :owner
  alias :接收者 :receiver
  alias :源代码地址 :source_location
  alias :解除绑定 :unbind
  alias :函数化 :to_proc
  alias :字符串 :to_s
end
