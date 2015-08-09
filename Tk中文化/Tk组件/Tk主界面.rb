#!/usr/bin/env ruby -w
# encoding: UTF-8
class TkRoot
  def self.创建(标题 = "", 宽 = 600, 高 = 400, 左位移 = 200, 上位移 = 160)
    新建{标题(标题); 尺寸(宽, 高, 左位移, 上位移)}
  end
  def 尺寸(宽,高,左位移,上位移);geometry("#{宽}x#{高}+#{左位移}+#{上位移}") end
  alias :标题 :title
end
