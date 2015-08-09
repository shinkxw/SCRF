#!/usr/bin/env ruby -w
# encoding: UTF-8
class Module
  alias :可读属性 :attr_reader
  alias :可读写属性 :attr_accessor
  alias :定义方法 :define_method
  alias :先祖链 :ancestors
  alias :单例类? :singleton_class?
  alias :删除类变量 :remove_class_variable
  alias :执行 :module_eval
  alias :字符串 :to_s
end