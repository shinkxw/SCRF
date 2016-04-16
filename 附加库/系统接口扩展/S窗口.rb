#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'Win32接口'
class S窗口
  可读属性 :句柄
  C查找窗口句柄 = Win32接口.新建('FindWindow', 'PP', 'L', 'user32')
  C枚举窗口句柄 = Win32接口.新建('EnumWindows', 'KP', 'L', 'user32')
  C枚举子窗口句柄 = Win32接口.新建('EnumChildWindows', 'LKP', 'L', 'user32')
  C设置前台窗口 = Win32接口.新建('SetForegroundWindow', 'L', 'L', 'user32')
  C获取前台窗口句柄 = Win32接口.新建('GetForegroundWindow', '', 'L', 'user32')
  C获取桌面窗口句柄 = Win32接口.新建('GetDesktopWindow', '', 'L', 'user32')
  C获取父窗口句柄 = Win32接口.新建('GetParent', 'L', 'L', 'user32')
  C获取窗口标题 = Win32接口.新建('GetWindowText', 'LPI', 'I', 'user32')
  C获取窗口类名 = Win32接口.新建('GetClassName', 'LPI', 'I', 'user32')
  def self.查找窗口(类名: nil, 标题: nil);窗口(C查找窗口句柄.请求(类名, 标题 ? 标题.编码为('GBK') : nil)) end
  def self.每个窗口;C枚举窗口句柄.请求(Win32接口回调.新建('LP', 'I'){|句柄| yield 窗口(句柄);true}, '') end
  def self.获取前台窗口;窗口(C获取前台窗口句柄.请求) end
  def self.获取桌面窗口;窗口(C获取桌面窗口句柄.请求) end
  def self.窗口(句柄);句柄 != 0 ? 新建(句柄) : nil end
  def 初始化(句柄);@句柄 = 句柄 end
  def 标题;获取缓冲区.自己{|缓冲区| C获取窗口标题.请求(@句柄, 缓冲区, 200)}.编码变动('GBK', 'UTF-8').去后空 end
  def 类名;获取缓冲区.自己{|缓冲区| C获取窗口类名.请求(@句柄, 缓冲区, 200)}.编码变动('GBK', 'UTF-8').去后空 end
  def 激活;C设置前台窗口.请求(@句柄) end
  def 父窗口;类.窗口(C获取父窗口句柄.请求(@句柄)) end
  def 每个子窗口;C枚举子窗口句柄.请求(@句柄, Win32接口回调.新建('LP', 'I'){|句柄| yield 类.窗口(句柄);true}, '') end
  def 字符串;@句柄 end
  def 获取缓冲区;"\0" * 200 end
end
