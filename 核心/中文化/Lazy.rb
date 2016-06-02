#!/usr/bin/env ruby -w
# encoding: UTF-8
class Enumerator::Lazy
  alias :收集 :collect
  alias :找出全部 :find_all
  alias :排除 :reject
  alias :检索 :grep
  alias :获取 :take
  alias :除去 :drop
  alias :获取当 :take_while
  alias :除去当 :drop_while
  alias :外转置 :zip
  alias :收集并重整 :flat_map
  alias :惰性 :lazy
  alias :字符串 :to_s
end
