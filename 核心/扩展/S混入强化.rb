#!/usr/bin/env ruby -w
# encoding: UTF-8
#用于扩展模块功能 使用 扩展 S混入强化 引入
module S混入强化
  class E多个包含时执行区块 < R标准错误
    def 初始化;super "不能定义多个包含时执行区块" end
  end

  def self.extended(基类)
    基类.设置实例变量(:@_依赖数组, [])
  end

  def append_features(基类)
    if 基类.定义了实例变量?(:@_依赖数组)
      基类.获取实例变量(:@_依赖数组) << self
      return false
    else
      return false if 基类 < self
      @_依赖数组.每个 {|依赖| 基类.包含模块(依赖)}
      super
      基类.扩展 获取常量(:M类方法模块) if 定义了常量?(:M类方法模块)
      基类.执行(&@_包含时执行代码) if 定义了实例变量?(:@_包含时执行代码)
    end
  end

  def 包含时执行(&包含时执行代码)
    引发 E多个包含时执行区块 if 定义了实例变量?(:@_包含时执行代码)
    @_包含时执行代码 = 包含时执行代码
  end

  def 定义类方法(&方法定义)
    类方法模块 = 定义了常量?(:M类方法模块, false) ? 获取常量(:M类方法模块) : 设置常量(:M类方法模块, R模块.新建)
    类方法模块.执行(&方法定义)
  end
end
