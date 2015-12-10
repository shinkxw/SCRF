#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc圆 < Tkc椭圆
  def self.创建(画布, 中点, 半径)
    新建(画布, 中点.x - 半径, 中点.y - 半径, 中点.x + 半径, 中点.y + 半径)
  end
  def 改变位置(画布, 中点, 半径)
    画布.改变组件位置(self, 中点.x - 半径, 中点.y - 半径, 中点.x + 半径, 中点.y + 半径)
  end
end
