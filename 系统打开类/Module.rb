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
  @@中文化方法映射 = {初始化: 'initialize', 每个: 'each'}
  @@中文化方法映射.merge!({方法缺失: 'method_missing', 幽灵方法?: 'respond_to_missing?'})
  def method_added(方法名称)
    原方法名 = @@中文化方法映射[方法名称]
    重命名方法(原方法名, 方法名称) if 原方法名
    _old_method_added_(方法名称)
  end
end