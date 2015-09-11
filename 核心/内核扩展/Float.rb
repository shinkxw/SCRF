#!/usr/bin/env ruby -w
# encoding: UTF-8
class Float
  def 去零字符串;格式化("%g", self) end
end