#!/usr/bin/env ruby -w
# encoding: UTF-8
module Process
  class << self
    alias :时间 :times
    alias :获取时钟时间 :clock_gettime
  end
end