#!/usr/bin/env ruby -w
# encoding: UTF-8
class String
  def 校验字符串;校验数.字符串 end
  def 校验数
    n = 0
    每个字节 do |字节|
      n += 字节
      n += (n << 10)
      n ^= (n >> 6)
    end
    n += (n << 3)
    n ^= (n >> 11)
    n += (n << 15)
    n & 0x8765fed1
  end
end