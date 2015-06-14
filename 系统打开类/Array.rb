#!/usr/bin/env ruby -w
# encoding: UTF-8
class Array
  alias :每个 :each
  alias :大小 :count
  alias :数量 :count
  alias :为空? :empty?
  alias :连接 :join
  alias :连接数组 :concat
  alias :重整 :flatten
  alias :重整! :flatten!
  alias :删除 :delete
  alias :排序 :sort
  alias :排序! :sort!
  alias :排序根据 :sort_by
  alias :去重 :uniq
  alias :去重! :uniq!
  alias :收集 :collect
  alias :替换 :collect!
  alias :入栈 :push
  alias :出栈 :pop
  alias :末尾 :last
end