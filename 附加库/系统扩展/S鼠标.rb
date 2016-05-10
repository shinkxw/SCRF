#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'Win32接口'
module S鼠标
  @获取鼠标位置 = Win32接口.新建("GetCursorPos", 'P', 'V', "user32")
  @设置鼠标位置 = Win32接口.新建("SetCursorPos", 'II', 'V', "user32")
  @鼠标事件 = Win32接口.新建("mouse_event", 'LLLLL', 'V', "user32")
  模块函数
  def 位置;(" " * 8).自己{|缓冲区| @获取鼠标位置.请求(缓冲区)}.解包("LL") end
  def 移动至(x, y);@设置鼠标位置.请求(x, y) end
  def 单击;按下左键;松开左键 end
  def 双击;单击;单击 end
  def 右键;按下右键;松开右键 end
  def 按下左键;@鼠标事件.请求(2,0,0,0,0) end
  def 松开左键;@鼠标事件.请求(4,0,0,0,0) end
  def 按下右键;@鼠标事件.请求(0x0008,0,0,0,0) end
  def 松开右键;@鼠标事件.请求(0x0010,0,0,0,0) end
end
