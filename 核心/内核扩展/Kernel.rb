#!/usr/bin/env ruby -w
# encoding: UTF-8
module Kernel
  def 输出(对象);puts (对象.类 == R字符串 ? 对象 : 对象.字符串) end
  def 展示(对象);p 对象 end
  def 执行(代码, 最大长度 = 50)
    引发异常('eval异常',"代码长度超过#{最大长度}") if 代码.长度 > 最大长度
    eval 代码
  end
  def 引发异常(异常类型, 异常信息);引发 E异常.新建(异常类型, 异常信息) end
  def 处理异常(异常);yield(异常);引发 异常 if 异常.并未处理? end
  def 耗时;时间 = R进程.单调时钟时间;yield;R进程.单调时钟时间 - 时间 end
  def 忽略错误(是否显示错误信息 = true)
    yield
  rescue R异常 => 异常
    异常.输出类名.输出信息.输出堆栈 if 是否显示错误信息
    异常.输出转换历史 if (是否显示错误信息 && 异常.属于?(E异常))
  end
  def 注册模块(*参数);S模块加载器.注册模块(*参数) end
  def 加载模块(模块名称);S模块加载器.加载模块(模块名称) end
  def 加载目录(目录路径);S脚本加载器.加载(目录路径) end
end