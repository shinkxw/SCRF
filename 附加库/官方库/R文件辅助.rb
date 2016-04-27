#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'fileutils'
R文件辅助 = FileUtils
class << R文件辅助
  alias :拷贝文件 :cp
  alias :复制文件 :cp
  alias :新建文件夹 :mkdir_p
  alias :删除文件夹 :remove_dir
end