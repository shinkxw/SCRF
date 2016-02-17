﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'D区域'
class D矩形区域 < D区域
  可读属性 :低点, :高点
  def self.创建(低点x, 低点y, 高点x, 高点y);新建(D二维点.新建(低点x, 低点y), D二维点.新建(高点x, 高点y)) end
  def 初始化(低点, 高点);@低点, @高点 = 低点, 高点 end
  def 长; 高点.x - 低点.x end
  def 宽; 高点.y - 低点.y end
  def 中点;低点.中点(高点) end
  def 对角线长度;低点.距离(高点) end
  def 等于?(矩形区域);@低点.等于?(矩形区域.低点) && @高点.等于?(矩形区域.高点) end
  def 相交?(区域)
    case 区域
    when D矩形区域
      @低点.全小于?(区域.高点) && @高点.全大于?(区域.低点)
    when D圆形区域
      矩形相交圆形?(self, 区域)
    else
      输出 "类 #{类} 的相交判断不支持该类型: #{区域.类}"
      false
    end
  end
  def 包围?(区域)
    case 区域
    when D矩形区域, D圆形区域
      @低点.全小于?(区域.低点) && @高点.全大于?(区域.高点)
    else
      输出 "类 #{类} 的包围判断不支持该类型: #{区域.类}"
      false
    end
  end
  def 相交区域(矩形区域);相交?(矩形区域) ? 类.新建(@低点.取高(矩形区域.低点), @高点.取低(矩形区域.高点)) : nil end
  def 包围区域(矩形区域);类.新建(@低点.取低(矩形区域.低点), @高点.取高(矩形区域.高点)) end
  def 位移(向量);类.新建(@低点.位移(向量), @高点.位移(向量)) end
  def 字符串; "[#{@低点.字符串}, #{@高点.字符串}]" end
end
