#!/usr/bin/env ruby -w
# encoding: UTF-8
class Struct
  class << self
    alias :新建 :new
    def inherited(继承类)
      继承类.执行 do
        单例类.执行 do
          定义方法(:新建) do |*参数|
            单例类.执行 do
              重命名方法(:新建, :new)
            end
            新建(*参数)
          end
        end
        重命名方法(:字符串, :to_s)
      end
    end
  end
end