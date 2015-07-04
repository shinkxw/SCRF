#!/usr/bin/env ruby -w
# encoding: UTF-8
class T测试
  可读属性 :描述, :代码, :次数
  def initialize(描述, 代码, 次数 = 1)
    @描述, @代码, @次数 = 描述, 代码, 次数
  end
end
