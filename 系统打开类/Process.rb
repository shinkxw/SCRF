#!/usr/bin/env ruby -w
# encoding: UTF-8
module Process
  class << self
    alias :时间 :times
  end
end