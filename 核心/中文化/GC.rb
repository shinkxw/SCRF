#!/usr/bin/env ruby -w
# encoding: UTF-8
class << GC
  alias :统计 :stat
  alias :开始 :start
  alias :启用 :enable
  alias :禁用 :disable
end
