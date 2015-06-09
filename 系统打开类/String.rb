#!/usr/bin/env ruby -w
# encoding: UTF-8
class String
  def 编码变动(原编码,现编码);self.force_encoding(原编码).encode(现编码) end
  def 中文化;编码为('GBK') end
  alias :长度 :length
  alias :编码 :encoding
  alias :符号 :to_sym
  alias :编码为 :encode
  alias :分割 :split
  alias :去尾 :chop
end