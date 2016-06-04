#!/usr/bin/env ruby -w
# encoding: UTF-8
class Thread
  class << self
    alias :新建 :new
    alias :当前线程 :current
    alias :主线程 :main
    alias :列表 :list
    alias :停止 :stop
    alias :关闭 :kill
  end
  alias :运行 :run
  alias :移交 :join
  alias :退出 :exit
  alias :状态 :status
  alias :字符串 :to_s
end
