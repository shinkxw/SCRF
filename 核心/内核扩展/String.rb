#!/usr/bin/env ruby -w
# encoding: UTF-8
class String
  def 字符串;'"' << 字符串化 << '"' end
  def 编码变动(原编码,现编码);self.识别为(原编码).编码为(现编码) end
  def 中文长度;长度 + 编码为('utf-8').扫描(/[\u4E00-\u9FA5]/).大小 end
  def 填充(长度, 填充符 = ' ');中文长度 < 长度 ? self + (填充符 * (长度 - 中文长度)) : self end
  def 中文?;self =~ /^[\u4e00-\u9fa5]+$/ end
end