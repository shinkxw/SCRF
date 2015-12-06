#!/usr/bin/env ruby -w
# encoding: UTF-8
module Process
  class << self
    def 实时时钟时间;获取时钟时间(Process::CLOCK_REALTIME) end
    def 单调时钟时间;获取时钟时间(Process::CLOCK_MONOTONIC) end
  end
end