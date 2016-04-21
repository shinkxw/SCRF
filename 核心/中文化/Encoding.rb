#!/usr/bin/env ruby -w
# encoding: UTF-8
class Encoding
  class << self
    alias :默认内部编码 :default_internal 
    alias :默认内部编码= :default_internal=
    alias :默认外部编码 :default_external 
    alias :默认外部编码= :default_external=
  end
  alias :字符串 :to_s
end