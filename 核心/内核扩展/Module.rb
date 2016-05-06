#!/usr/bin/env ruby -w
# encoding: UTF-8
class Module
  @@限制类型 = %w(公共 保护 私有)
  def 方法调用限制类型(方法名称)
    @@限制类型.每个{|类型| return 类型 if 调用("定义了#{类型}方法?", 方法名称)}
    nil
  end
  alias :_old_method_added_ :method_added
  @@方法映射 = {初始化: 'initialize', 每个: 'each'}
  @@方法映射.合并!({方法缺失: 'method_missing', 幽灵方法?: 'respond_to_missing?'})
  @@忽略方法名称 = %w(initialize method_missing respond_to_missing?)
  def method_added(方法名称)
    原方法名 = @@方法映射[方法名称]
    if 原方法名
      if (方法调用限制类型(原方法名) && !@@忽略方法名称.包含?(原方法名))
        输出 "#{self}##{原方法名}方法会被覆盖,请注意!"
      end
      设置方法别名(原方法名, 方法名称)
      私有方法(方法名称) if 方法名称 == :初始化#特殊情况
    end
    _old_method_added_(方法名称)
  end
  alias :_old_singleton_method_added_ :singleton_method_added
  @@单例方法映射 = {常量缺失: 'const_missing'}
  @@忽略单例方法名称 = %w(const_missing)
  def singleton_method_added(方法名称)
    原方法名 = @@单例方法映射[方法名称]
    当前模块 = self
    单例类.执行 do
      if 原方法名
        if (方法调用限制类型(原方法名) && !@@忽略单例方法名称.包含?(原方法名))
          输出 "#{当前模块}.#{原方法名}方法会被覆盖,请注意!"
        end
        设置方法别名(原方法名, 方法名称)
      end
    end
    _old_singleton_method_added_(方法名称)
  end
end