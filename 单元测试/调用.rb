#!/usr/bin/env ruby -w
# encoding: UTF-8
module Kernel
  def 定义测试集(测试集描述, &测试集代码)
    T测试框架.添加测试集(T测试集.new(测试集描述, 测试集代码))
  end
  def 执行测试集(测试集描述, &测试集代码)
    测试集 = T测试集.new(测试集描述, 测试集代码)
    输出 测试集.执行测试
    测试集.总结
  end
end
