#!/usr/bin/env ruby -w
# encoding: UTF-8
class T测试集
  attr_reader :描述, :成功次数
  def initialize(描述, 测试集代码)
    @描述, @测试数组, @成功次数, @初始化代码, @回收代码 = 描述, [], 0, nil, nil
    self.实例执行(&测试集代码)
  end
  def 添加测试(测试描述, 测试次数 = 1, &测试代码);@测试数组 << T测试.新建(测试描述, 测试代码, 测试次数) end
  def 初始化(&初始化代码);@初始化代码 = 初始化代码 end
  def 回收(&回收代码);@回收代码 = 回收代码 end
  def 执行测试集
    @耗时 = Time.now
    输出字符串 = " - - #{@描述} 开始执行...\n"
    @测试数组.each do |测试|
      测试结果 = 执行(测试)
      @成功次数 += 1 if 测试结果
      输出字符串 << " - - - - #{测试.描述}(#{测试.次数}次) #{测试结果 ? '成功' : '失败'}\n"
    end
    @耗时 = Time.now - @耗时
    输出字符串 << 总结
  end
  def 执行(测试)
    测试.次数.times do
      测试对象 = Object.新建
      测试对象.实例执行(&@初始化代码) if @初始化代码
      测试执行结果 = 测试对象.实例执行(&测试.代码)
      测试对象.实例执行(&@回收代码) if @回收代码
      return false if 测试执行结果 == false
    end
    return true
  rescue E异常 => 异常
    输出 异常.信息
    return false
  end
  def 测试数量;@测试数组.size end
  def 总结;" - - #{@描述} 测试结束, 耗时#{@耗时}秒, 结果: #{@成功次数} / #{测试数量}" end
end
