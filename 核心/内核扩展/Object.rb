#!/usr/bin/env ruby -w
# encoding: UTF-8
class Object
  def 字符串;puts 类名 << '该类没有覆盖字符串方法';to_s end
  def 格式转换(格式);format(格式, self) end
  def 类名;self.class.to_s end
  def 定义单例方法(方法名, &块);单例类.send(:define_method, 方法名, &块) end
  def 定义实例方法(方法名, &块);类.send(:define_method, 方法名, &块) end
end
