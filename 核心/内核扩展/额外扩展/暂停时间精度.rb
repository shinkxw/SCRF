#!/usr/bin/env ruby -w
# encoding: UTF-8
module Kernel
  #如果暂停的时间精度不够准
  if (3.次.有些?{耗时{暂停 0.001} > 0.0015})
    输出 '!'
    def 暂停(时间长度)
      if (时间长度 > 1 || 时间长度 < 0.0009)
        sleep 时间长度
      else
        (时间长度 / 0.0009).整数化.次{sleep 0.0009}
        sleep (时间长度 % 0.0009)
      end
    end
  end
end