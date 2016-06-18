#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'ostruct'
R开放式结构体 = OpenStruct
class OpenStruct
  alias :字符串 :to_s
end
