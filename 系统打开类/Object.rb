#!/usr/bin/env ruby -w
# encoding: UTF-8
class Object
  def 字符串;puts 类名 << '该类没有覆盖字符串方法';to_s end
  def 格式转换(格式);format(格式, self) end
  def 类名;self.class.to_s end
  def 定义单例方法(方法名, &块);单例类.send(:define_method, 方法名, &块) end
  alias :类 :class
  alias :调用 :__send__
  alias :方法 :methods
  alias :属于? :kind_of?
  alias :响应? :respond_to?
  alias :克隆 :clone
  alias :复制 :dup
  alias :返回自己 :tap
  alias :实例执行 :instance_eval
  alias :单例类 :singleton_class
  alias :单例方法 :singleton_methods
end
