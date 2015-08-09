#!/usr/bin/env ruby -w
# encoding: UTF-8
class TkObject
  def method_missing(方法名, *参数)
    return 调用($1, *参数) if 方法名.字符串化 =~ /^(.*)=$/
    super
  end
end