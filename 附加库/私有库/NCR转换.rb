#!/usr/bin/env ruby -w
# encoding: UTF-8
class String
  def ncr转换;替换(/&#(.*?);/){|值| 值[2..-2].整数化.字符化(R编码::UTF_8)} end
  def ncr化;每个字符.收集{|字符| "&##{字符.数值化};"}.连接 end
end
class NilClass
  def ncr化;'' end
end
