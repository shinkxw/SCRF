#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc弧形
  def self.创建(画布, 左上点, 右下点)
    新建(画布, 左上点.x, 左上点.y, 右下点.x, 右下点.y)
  end
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
#~ ["disabledwidth", 0.0, 0.0]
#~ ["extent", 90, 90.0]
#~ ["outline", "black", "black"]
#~ ["outlineoffset", "0,0", "0,0"]
#~ ["outlinestipple", "", ""]
#~ ["start", 0, 0.0]
#~ ["style", "", "pieslice"]