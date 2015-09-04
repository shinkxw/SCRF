#!/usr/bin/env ruby -w
# encoding: UTF-8
class BasicObject
  alias :实例执行 :instance_eval
  alias :实例带参执行 :instance_exec
end
