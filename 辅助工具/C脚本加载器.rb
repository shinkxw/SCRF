#!/usr/bin/env ruby -w
# encoding: UTF-8
class C脚本加载器
  def self.加载(加载路径)
    加载目录(加载路径)
    子目录名数组 = Dir.foreach(加载路径, encoding: 'UTF-8').select{|文件名| !文件名.include?('.')}
    子目录名数组.each{|子目录名| 加载(加载路径 + '/' + 子目录名)}
  end
  def self.加载目录(加载路径)
    $:.unshift(加载路径)
    脚本文件名数组 = Dir.foreach(加载路径, encoding: 'UTF-8').select{|文件名| File.extname(文件名) == '.rb'}
    脚本文件名数组.each{|脚本文件名| require 脚本文件名}
  rescue Exception => 异常
    异常.输出类名.输出信息.输出堆栈
  end
end
