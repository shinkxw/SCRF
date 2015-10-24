#!/usr/bin/env ruby -w
# encoding: UTF-8
class Dir
  class << self
    alias :遍历 :foreach
    alias :打开 :open
    alias :匹配 :glob
    alias :存在? :exist?
    alias :获取当前工作目录 :pwd
    alias :改变当前工作目录 :chdir
  end
  alias :路径 :path
  alias :每个元素 :each
  alias :读取 :read
  alias :关闭 :close
end