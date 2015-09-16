#!/usr/bin/env ruby -w
# encoding: UTF-8
class Proc
  alias :执行 :call
  alias :参数个数 :arity
end