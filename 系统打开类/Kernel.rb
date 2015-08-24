#!/usr/bin/env ruby -w
# encoding: UTF-8
module Kernel
  def 输出(对象);puts 对象.字符串 end
  def 展示(对象);p 对象 end
  def 执行(代码, 最大长度 = 50)
    引发异常('eval异常',"代码长度超过#{最大长度}") if 代码.长度 > 最大长度
    eval 代码
  end
  def 引发异常(异常类型, 异常信息);raise E异常.新建(异常类型, 异常信息) end
  def 处理异常(异常);yield(异常);引发 异常 if 异常.并未处理? end
  def 耗时;time = Time.now;yield;Time.now - time end
  def 忽略错误(是否显示错误信息 = true)
    yield
  rescue Exception => 异常
    异常.输出类名.输出信息.输出堆栈 if 是否显示错误信息
    异常.输出转换历史 if (是否显示错误信息 && 异常.属于?(E异常))
  end
  def 注册模块(*参数);S模块加载器.注册模块(*参数) end
  def 加载模块(模块名称);S模块加载器.加载模块(模块名称) end
  def 加载目录(目录路径);S脚本加载器.加载(目录路径) end
  alias :需要 :require
  alias :需要类 :require_relative
  alias :需要模块 :require_relative
  alias :引发 :raise
  alias :随机 :rand
  alias :调用信息 :caller
  alias :循环 :loop
  alias :暂停 :sleep
  alias :格式化 :format
  #~ def 存在类?(类名);eval("defined?(#{类名}) && #{类名}.is_a?(Class)") == true end
end