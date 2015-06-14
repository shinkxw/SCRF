#!/usr/bin/env ruby -w
# encoding: UTF-8
class TracePoint
  alias :启用 :enable
  alias :禁用 :disable
  alias :调用对象 :defined_class
  alias :方法名称 :method_id
end