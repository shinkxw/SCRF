#!/usr/bin/env ruby -w
# encoding: UTF-8
class File
  class << self
    alias :打开 :open#"#{@file_path}","r:#{@encode}"
    alias :目录名称 :dirname
    alias :扩展名 :extname
    alias :存在? :exist?
    alias :文件类型 :ftype
    alias :目录? :directory?
    alias :文件? :file?
  end
  alias :路径 :path
  alias :打开 :open
  alias :读取 :read
  alias :逐行读取 :readlines
  alias :写入 :puts
  alias :关闭 :close
end