#!/usr/bin/env ruby -w
# encoding: UTF-8
#屏蔽ctrl+c R信号.捕获(:INT){输出 "已屏蔽"}
class << Signal
  alias :列表 :list
  alias :名称 :signame
  alias :捕获 :trap
end
