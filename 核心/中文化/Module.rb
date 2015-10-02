#!/usr/bin/env ruby -w
# encoding: UTF-8
class Module
  alias :名称 :name
  alias :可读属性 :attr_reader
  alias :可读写属性 :attr_accessor
  alias :定义方法 :define_method
  alias :先祖链 :ancestors
  alias :单例类? :singleton_class?
  alias :删除类变量 :remove_class_variable
  alias :包含模块 :include
  alias :后置模块 :include
  alias :先置模块 :prepend
  alias :执行 :module_eval
  alias :带参执行 :module_exec
  alias :字符串 :to_s
  alias :重命名方法 :alias_method
  alias :公共方法 :public
  alias :保护方法 :protected
  alias :私有方法 :private
end