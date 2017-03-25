#!/usr/bin/env ruby -w
# encoding: UTF-8
class Binding
  alias :执行 :eval
  alias :定义了局部变量? :local_variable_defined?
  alias :设置局部变量 :local_variable_set
  alias :获取局部变量 :local_variable_get
end
