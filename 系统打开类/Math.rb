#!/usr/bin/env ruby -w
# encoding: UTF-8
module Math
  def self.笛卡尔积(*范围数组, &块)
    return nil if 范围数组.为空?
    范围数组.替换!{|范围| 范围.是?(R数组) ? 范围 : 范围.数组化}
    范围 = 范围数组.去首
    return 范围数组.为空? ? 范围.乘积(&块) : 范围.乘积(*范围数组, &块)
  end
end