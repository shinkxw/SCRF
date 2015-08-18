#!/usr/bin/env ruby -w
# encoding: UTF-8
class C数据采集器
  def 初始化(*参数范围数组, &块)
    R数学.笛卡尔积(*参数范围数组) do |参数数组|
      结果 = 块[*参数数组]
      输出 "#{参数数组.字符串} => #{结果.字符串}"
    end
  end
end