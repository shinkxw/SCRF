#!/usr/bin/env ruby -w
# encoding: UTF-8
class << ObjectSpace
  alias :每个对象 :each_object
  alias :定义回收回调 :define_finalizer
end
