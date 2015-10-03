#!/usr/bin/env ruby -w
# encoding: UTF-8
class Thread
  class << self
    alias :新建 :new
    alias :当前线程 :current
    alias :主线程 :main
    alias :列表 :list
  end
  alias :字符串 :to_s
end