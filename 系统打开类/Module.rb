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
  alias :重命名方法 :alias_method
  alias :_old_method_added_ :method_added
  def method_added(方法名称)
    重命名方法(:initialize, :初始化) if 方法名称 == :初始化
    _old_method_added_(方法名称)
  end
end