#!/usr/bin/env ruby -w
# encoding: UTF-8
module Kernel
  def 输出(对象);puts 中文化 对象 end
  def 展示(对象);p 中文化 对象 end
  def 中文化(对象)
    case 对象.类名
    when 'Array'; '[' + 对象.收集{|子对象| 中文化(子对象)}.连接(', ') + ']'
    when 'Hash'; '{' + 对象.收集{|k,v| 中文化(k) + '=>' + 中文化(v)}.连接(', ') + '}'
    when 'String'; 对象.编码为('GBK')
    when 'Symbol'; 对象.字符串.编码为('GBK')
    when 'NilClass'; 'nil'
    else; 对象.字符串.编码为('GBK')
    end
  end
  def 执行(代码, 最大长度 = 50)
    引发异常('eval异常',"代码长度超过#{最大长度}") if 代码.长度 > 最大长度
    eval 代码
  end
  def 引发异常(异常类型, 异常信息);raise E异常.new(异常类型, 异常信息) end
  def 处理异常(异常); yield(异常);引发 异常 if 异常.并未处理? end
  def 耗时;time = Time.now;yield;Time.now - time end
  def 忽略错误(是否显示错误信息 = true)
    yield
  rescue Exception => 异常
    异常.输出类名.输出信息.输出堆栈 if 是否显示错误信息
    异常.输出转换历史 if (是否显示错误信息 && 异常.属于?(E异常))
  end
  def 加载模块(模块名称);C模块加载器.加载模块(模块名称) end
  def 加载目录(目录路径);C脚本加载器.加载(目录路径) end
  alias :需要 :require
  alias :引发 :raise
  alias :随机 :rand
  alias :调用信息 :caller
  alias :暂停 :sleep
  #~ def 存在类?(类名);eval("defined?(#{类名}) && #{类名}.is_a?(Class)") == true end
end