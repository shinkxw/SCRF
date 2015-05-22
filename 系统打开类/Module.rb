#!/usr/bin/env ruby -w
# encoding: UTF-8
class Module
  alias :定义实例方法 :define_method
  alias :先祖链 :ancestors
end