#!/usr/bin/env ruby -w
# encoding: UTF-8
require "fileutils"
module S目录
  def self.遍历文件路径(目录路径, 编码 = 'UTF-8', 是否递归 = true, &处理)
    子目录路径数组 = []
    Dir.foreach(目录路径, encoding: 编码).each do |文件名|
      next if (文件名 == '.' || 文件名 == '..')
      路径 = 目录路径 + '\\' + 文件名
      (File.file? 路径) ? 处理[路径] : 子目录路径数组 << 路径
    end
    子目录路径数组.each{|子目录路径| 遍历文件路径(子目录路径, 编码, &处理)} if 是否递归
  end
  def self.遍历目录路径(目录路径, 编码 = 'UTF-8', &处理)
    子目录路径数组 = []
    Dir.foreach(目录路径, encoding: 编码).each do |文件名|
      next if (文件名 == '.' || 文件名 == '..')
      路径 = 目录路径 + '\\' + 文件名
      子目录路径数组 << 路径 if File.directory?(路径)
    end
    子目录路径数组.each do |子目录路径|
      处理[子目录路径]
      遍历目录路径(子目录路径, 编码, &处理)
    end
  end
  def self.拷贝文件(文件路径, 目标路径);FileUtils.cp(文件路径, 目标路径) end
  def self.新建文件夹(文件夹路径);FileUtils.mkdir_p(文件夹路径) end
  def self.删除文件夹(文件夹路径);FileUtils.rmdir(文件夹路径) end
  def self.清空指定文件夹(文件夹路径)
    删除文件夹(文件夹路径)
    新建文件夹(文件夹路径)
  end
end
