#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'Win32接口'
class S窗口
  可读属性 :句柄
  C枚举顶层窗口句柄 = Win32接口.新建('EnumWindows', 'KP', 'L', 'user32')
  C获取前台窗口句柄 = Win32接口.新建('GetForegroundWindow', '', 'L', 'user32')
  C获取窗口标题 = Win32接口.新建('GetWindowText', 'LPI', 'I', 'user32')
  def self.每个顶层窗口(&块)
    C枚举顶层窗口句柄.请求(Win32接口回调.新建('LP', 'I'){|句柄| yield 新建(句柄);true}, '') if 提供了块?
  end
  def self.获取前台窗口;新建(C获取前台窗口句柄.请求) end
  def 初始化(句柄);@句柄 = 句柄 end
  def 标题;获取缓冲区.自己{|缓冲区| C获取窗口标题.请求(@句柄, 缓冲区, 200)}.编码变动('GBK', 'UTF-8').删除("\0") end
  def 获取缓冲区;"\0" * 200 end
end
