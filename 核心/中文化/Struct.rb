﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Struct
  class << self
    alias :新建 :new
    def inherited(继承类)
      继承类.执行 do
        单例类.执行 do
          定义方法(:新建) do |*参数|
            单例类.执行 do
              设置方法别名(:新建, :new)
            end
            新建(*参数)
          end
        end
        设置方法别名(:字符串, :to_s)
      end
    end
  end
  alias :每对 :each_pair
  alias :每个值 :each
end
