#!/usr/bin/env ruby -w
# encoding: UTF-8
class C字符串匹配器
  def self.目录文件匹配(目录路径, 文件后缀 = '.*')
    S目录.遍历文件路径(目录路径) do |路径|
      if 文件后缀 == '.*' || 文件后缀.含有?(File.extname(路径))
        字符串数组 = open(路径,'r:UTF-8'){|文件| 文件.readlines}
        字符串数组.each_index do |index|
          yield("#{路径}   第#{index + 1}行", 字符串数组[index])
        end
      end
    end
  end
end
