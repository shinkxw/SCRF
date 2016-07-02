#!/usr/bin/env ruby -w
# encoding: UTF-8
module Enumerable
  def 平均值;注入(&:+) / 数量 end
  def 差异对象组(迭代器)
    R哈希.新建.自己 do |哈希|
      每个{|对象| 哈希[对象] = true}
      迭代器.每个{|对象| 哈希.含有键?(对象) ? 哈希.删除(对象) : 哈希[对象] = false}
    end
  end
  def 字符串;'[' << 收集{|子对象| 子对象.字符串}.连接(', ') << ']' end
end
