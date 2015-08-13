#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc椭圆
  def self.创建(画布, 左上点, 右下点)
    新建(画布, 左上点.x, 左上点.y, 右下点.x, 右下点.y)
  end
  def 改变位置(画布, 左点, 右点)
    画布.改变组件位置(self, 左点.x, 左点.y, 右点.x, 右点.y)
  end
  定义映射方法(fill: '颜色')
end