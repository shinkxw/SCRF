﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Object
  def 字符串;to_s end
  def 类名;self.class.to_s end
  def 获取单例类;class << self;return self;end end
  def 定义单例方法(方法名, &块);获取单例类.send(:define_method, 方法名, &块) end
  alias :类 :class
  alias :调用 :__send__
  alias :方法 :methods
  alias :属于? :is_a?
  alias :克隆 :clone
  alias :复制 :dup
  alias :返回自己 :tap
  alias :实例执行 :instance_eval
end
