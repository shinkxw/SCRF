#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'Win32接口'
module S鼠标
  @获取鼠标位置 = Win32接口.新建("GetCursorPos", ['P'], 'V', "user32")
  @设置鼠标位置 = Win32接口.新建("SetCursorPos", ['I']*2, 'V', "user32")
  @鼠标事件 = Win32接口.新建("mouse_event", ['L']*5, 'V', "user32")
  def self.位置
    结果 = " " * 8
    @获取鼠标位置.请求(结果)
    结果.解包("LL")
  end
  def self.设置位置(x, y);@设置鼠标位置.请求(x, y) end
  def self.单击;按下左键;松开左键 end
  def self.双击;单击;单击 end
  def self.右键;按下右键;松开右键 end
  def self.按下左键;@鼠标事件.请求(2,0,0,0,0) end
  def self.松开左键;@鼠标事件.请求(4,0,0,0,0) end
  def self.按下右键;@鼠标事件.请求(0x0008,0,0,0,0) end
  def self.松开右键;@鼠标事件.请求(0x0010,0,0,0,0) end
end