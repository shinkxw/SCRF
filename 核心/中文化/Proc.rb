﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Proc
  alias :执行 :call
  alias :参数个数 :arity
  alias :字符串 :to_s
end