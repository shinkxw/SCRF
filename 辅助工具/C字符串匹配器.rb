#!/usr/bin/env ruby -w
# encoding: UTF-8
class C字符串匹配器
  def self.检测脚本文件(加载路径, 脚本文件名)
    字符串数组 = open("#{加载路径}/#{脚本文件名}",'r:UTF-8'){|脚本文件| 脚本文件.readlines}
    字符串数组.each do |字符串|
      #if后只有=
      puts "#{加载路径}/#{脚本文件名} 可能存在问题: #{字符串}".encode('GBK') if 字符串 =~ /^[^"]*?if [^=<>!]*?(=(?!=|~)(?!<>!)).*?$/
      #puts "#{文件路径}: #{字符串}".encode('GBK') if 字符串 =~ /任意大于/
    end
  end
end
