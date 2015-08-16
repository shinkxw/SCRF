#!/usr/bin/env ruby -w
# encoding: UTF-8
class TkObject
  def self.定义映射方法(方法映射)
    方法映射.每对 do |原方法名, 现方法名|
      定义方法(现方法名) {|值 = nil| 值 ? 调用(原方法名, 值) : 调用(原方法名)}
      定义方法(现方法名 + '=') {|值| 调用(原方法名, 值)}
    end
  end
  alias :tk方法缺失 :method_missing
  def 方法缺失(方法名, *参数)
    return 调用($1, *参数) if 方法名.字符串化 =~ /^([\u4e00-\u9fa5]+)=$/
    tk方法缺失(方法名, *参数)
  end
end