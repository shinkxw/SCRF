#!/usr/bin/env ruby -w
# encoding: UTF-8
module R标准输入输出
  def self.输入=(输入);$stdin = 输入 end
  def self.输出=(输出);$stdout = 输出 end
  def self.错误输出=(输出);$stderr = 输出 end
end
