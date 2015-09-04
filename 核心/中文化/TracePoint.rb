#!/usr/bin/env ruby -w
# encoding: UTF-8
class TracePoint
  class << self
    alias :新建 :new
  end
  alias :启用 :enable
  alias :禁用 :disable
  alias :调用对象 :defined_class
  alias :方法名称 :method_id
end