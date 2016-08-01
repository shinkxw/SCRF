#!/usr/bin/env ruby -w
# encoding: UTF-8
class << Signal
  alias :列表 :list
  alias :名称 :signame
  alias :捕获 :trap
end
