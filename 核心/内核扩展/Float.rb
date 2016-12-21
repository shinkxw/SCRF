#!/usr/bin/env ruby -w
# encoding: UTF-8
class Float
  def 去零
    self == 整数化 ? 整数化 : self
  end
  def 随机化整
    整数部分 = 向下取整
    小数部分 = self - 整数部分
    随机 > 小数部分 ? 整数部分 : 整数部分 + 1
  end
end
