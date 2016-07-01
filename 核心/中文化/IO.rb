#!/usr/bin/env ruby -w
# encoding: UTF-8
class IO
  class << self
    alias :打开 :open
  end
  alias :打开 :open
  alias :读取 :read
  alias :逐行读取 :readlines
  alias :写入 :puts
  alias :输出 :puts
  alias :格式化输出 :printf
  alias :关闭 :close
end
