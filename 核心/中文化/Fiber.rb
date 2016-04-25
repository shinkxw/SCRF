#!/usr/bin/env ruby -w
# encoding: UTF-8
class Fiber
  class << self
    alias :让出 :yield
  end
  alias :恢复 :resume
end
