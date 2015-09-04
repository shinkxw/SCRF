#!/usr/bin/env ruby -w
# encoding: UTF-8
class Hash
  def 字符串;'{' << collect{|k,v| k.字符串 << '=>' << v.字符串}.join(', ') << '}' end
end