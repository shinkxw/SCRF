#!/usr/bin/env ruby -w
# encoding: UTF-8
class C秒表
  可读属性 :历史记录
  def 初始化;开始 end
  def 开始;@开始时间, @历史记录 = R进程.单调时钟时间, [] end
  def 记录;(R进程.单调时钟时间 - @开始时间).自己{|间隔| @历史记录 << 间隔} end
end

描述 C秒表 do
  添加测试 '秒表测试' do
    秒表 = C秒表.新建
    5.次{秒表.记录}
    期望(秒表.历史记录.数量).等于 5
  end
end
