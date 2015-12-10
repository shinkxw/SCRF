#!/usr/bin/env ruby -w
# encoding: UTF-8
module Tk
  class << self
    alias :运行 :mainloop
    def 后台运行;R线程.新建 {运行} end
    def 延迟显示(最大延迟毫秒数 = 300,&运行块)
      TkAfter.start(最大延迟毫秒数, 1){忽略错误{运行块.执行}}
    end
  end
end