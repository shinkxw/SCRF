#!/usr/bin/env ruby -w
# encoding: UTF-8
module Enumerable
  alias :全部? :all?
  alias :有些? :any?
  alias :含有? :include?
  alias :寻找 :find
  alias :找出 :select
  alias :收集 :collect
  def 每个(&块); each(&块) end
end
