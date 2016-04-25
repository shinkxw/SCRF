#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'fiber'
class Fiber
  class << self
    alias :当前纤程 :current
  end
  alias :活动? :alive?
  alias :传递 :transfer
  alias :转移 :transfer
end
