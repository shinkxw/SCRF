#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'find'
R查找 = Find
class << R查找
  alias :查找 :find
  alias :遍历 :find
  alias :跳过 :prune
end
