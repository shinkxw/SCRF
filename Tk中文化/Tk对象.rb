#!/usr/bin/env ruby -w
# encoding: UTF-8
需要模块 'Tk'
class TkObject
  def self.定义映射方法(方法映射)
    方法映射.每对 do |原方法名, 现方法名|
      定义方法(现方法名) {调用(原方法名)}
      定义方法(现方法名 + '=') {|值| 调用(原方法名, 值)}
    end
  end
  alias :tk_method_missing :method_missing
  def method_missing(方法名, *参数)
    return 调用($1, *参数) if 方法名.字符串化 =~ /^([\u4e00-\u9fa5]+)=$/
    tk_method_missing(方法名, *参数)
  end
end
