#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative 'S目录'
module S脚本加载器
  def self.加载(加载路径)
    S目录.遍历文件路径(加载路径){|文件名| require 文件名 if File.extname(文件名) == '.rb'}
  rescue Exception => 异常
    异常.输出类名.输出信息.输出堆栈
  end
end
