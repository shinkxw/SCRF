#!/usr/bin/env ruby -w
# encoding: UTF-8
class << Marshal
  alias :写入 :dump
  alias :序列化 :dump
  alias :加载 :load
  alias :恢复 :restore
end
