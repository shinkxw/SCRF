#!/usr/bin/env ruby -w
# encoding: UTF-8
class Integer
  def 均匀划分(划分数量)
    商 = self / 划分数量
    商加一 = 商 + 1
    余数 = self % 划分数量
    R数组.新建(划分数量){|索引| 索引 >= 余数 ? 商 : 商加一}
  end
end
