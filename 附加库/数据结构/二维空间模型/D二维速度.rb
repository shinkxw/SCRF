#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'D二维向量'
class D二维速度 < D二维向量
  def 为零?;@x == 0 && @y == 0 end
  def 不为零?;@x != 0 || @y != 0 end
  def 置零;@x = 0;@y = 0 end
  def 移动(时间);self * 时间 end
  def 减速(数值)
    速率 = (@x.平方 + @y.平方).开根
    减速后速率 = 速率 - 数值
    if 减速后速率 < 0
      置零
    else
      @x = (@x / 速率 * 减速后速率).四舍五入
      @y = (@y / 速率 * 减速后速率).四舍五入
    end
  end
end