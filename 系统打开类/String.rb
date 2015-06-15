#!/usr/bin/env ruby -w
# encoding: UTF-8
class String
  def 编码变动(原编码,现编码);self.force_encoding(原编码).encode(现编码) end
  def 中文长度;length + encode('utf-8').scan(/[\u4E00-\u9FA5]/).size end
  def 填充(长度, 填充符 = ' ');中文长度 < 长度 ? self + (填充符 * (长度 - 中文长度)) : self end
  alias :长度 :length
  alias :编码 :encoding
  alias :符号 :to_sym
  alias :编码为 :encode
  alias :分割 :split
  alias :去尾 :chop
  alias :替换 :gsub
  alias :字符串 :to_s
end