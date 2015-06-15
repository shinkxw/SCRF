#!/usr/bin/env ruby -w
# encoding: UTF-8
class Symbol
  #alias :字符串 :to_s
  def 字符串;':' << to_s end
end