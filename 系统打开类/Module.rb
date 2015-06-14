#!/usr/bin/env ruby -w
# encoding: UTF-8
class Module
  alias :定义实例方法 :define_method
  alias :先祖链 :ancestors
  alias :单例类? :singleton_class?
  alias :删除类变量 :remove_class_variable
end