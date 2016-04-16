#!/usr/bin/env ruby -w
# encoding: UTF-8
class Hash
  alias :初始化 :initialize
  alias :每对 :each
  alias :大小 :size
  alias :数量 :size
  alias :每个键 :each_key
  alias :每个值 :each_value
  alias :删除 :delete
  alias :条件删除 :delete_if
  alias :清空 :clear
  alias :默认值 :default
  alias :删除 :delete
  alias :为空? :empty?
  alias :含有键? :has_key?
  alias :含有值? :has_value?
  alias :合并 :merge
  alias :合并! :merge!
  alias :倒置 :invert
  alias :所有键 :keys
  alias :所有值 :values
end