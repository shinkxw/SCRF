#!/usr/bin/env ruby -w
# encoding: UTF-8
class Tkc多边形
  def self.创建(画布, *点集)
    新建(画布, *点集.收集{|点| [点.x, 点.y]}.重整)
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
#~ ["joinstyle", "round", "round"]
#~ ["outline", "", ""]
#~ ["outlineoffset", "0,0", "0,0"]
#~ ["outlinestipple", "", ""]
#~ ["smooth", 0, 0]
#~ ["splinesteps", 12, 12]