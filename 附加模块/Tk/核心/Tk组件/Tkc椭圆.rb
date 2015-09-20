#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc椭圆
  def self.创建(画布, 左上点, 右下点)
    新建(画布, 左上点.x, 左上点.y, 右下点.x, 右下点.y)
  end
  def 移动(画布, 移动向量);画布.移动组件(self, 移动向量.x, 移动向量.y) end
  def 改变位置(画布, 左点, 右点);画布.改变组件位置(self, 左点.x, 左点.y, 右点.x, 右点.y) end
  定义映射方法(fill: '填充色', offset: '偏移量', stipple: '点画', width: '宽度')
  定义映射方法(activefill: '活动时填充色', disabledfill: '禁用时填充色')
  定义映射方法(activestipple: '活动时点画', disabledstipple: '禁用时点画')
end
#~ ["activedash", "", ""]
#~ ["activeoutline", "", ""]
#~ ["activeoutlinestipple", "", ""]
#~ ["activewidth", 0.0, 0.0]
#~ ["dash", "", ""]
#~ ["dashoffset", 0, 0]
#~ ["disableddash", "", ""]
#~ ["disabledoutline", "", ""]
#~ ["disabledoutlinestipple", "", ""]
#~ ["disabledwidth", 0.0, 0]
#~ ["outline", "black", "black"]
#~ ["outlineoffset", "0,0", "0,0"]
#~ ["outlinestipple", "", ""]