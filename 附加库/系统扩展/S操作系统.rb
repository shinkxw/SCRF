#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'Win32接口'
module S操作系统
  @获取当前用户 = Win32接口.新建('GetUserName', 'PP', 'I', 'advapi32')
  模块函数
  def 当前用户;使用缓冲区{|缓冲区| @获取当前用户.请求(缓冲区, [200].打包('L'))} end
  def 使用缓冲区;("\0" * 200).自己{|缓冲区| yield 缓冲区}.编码变动('GBK', 'UTF-8').去后空 end
end
