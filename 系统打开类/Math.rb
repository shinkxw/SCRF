﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
module Math
  def self.笛卡尔积(*范围数组, &块)
    return nil if 范围数组.为空?
    范围数组.替换!{|范围| 范围.是?(R数组) ? 范围 : 范围.数组化}
    范围 = 范围数组.去首
    return 范围数组.为空? ? 范围.乘积(&块) : 范围.乘积(*范围数组, &块)
  end
  def self.递归笛卡尔积(*范围数组, &块)
    return nil if 范围数组.为空?
    递归([], 范围数组, 块)
  end
  def self.递归(参数数组, 范围数组, 块)
    范围 = 范围数组.去首
    if 范围数组.为空?
      范围.每个{|值| 块[*参数数组.复制 << 值]}
    else
      范围.每个{|值| 递归(参数数组.复制 << 值, 范围数组.复制, 块)}
    end
  end
end