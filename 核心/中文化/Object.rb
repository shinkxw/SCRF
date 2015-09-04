#!/usr/bin/env ruby -w
# encoding: UTF-8
class Object
  alias :类 :class
  alias :调用 :public_send
  alias :强制调用 :__send__
  alias :方法 :methods
  alias :是? :is_a?
  alias :属于? :kind_of?
  alias :响应? :respond_to?
  alias :克隆 :clone
  alias :复制 :dup
  alias :返回自己 :tap
  alias :扩展 :extend
  alias :实例执行 :instance_eval
  alias :实例带参执行 :instance_exec
  alias :实例变量已定义? :instance_variable_defined?
  alias :实例变量 :instance_variables 
  alias :设置实例变量 :instance_variable_set
  alias :获取实例变量 :instance_variable_get
  alias :删除实例变量 :remove_instance_variable
  alias :单例类 :singleton_class
  alias :单例方法 :singleton_methods
end
