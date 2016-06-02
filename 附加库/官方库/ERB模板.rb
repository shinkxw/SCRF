#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'erb'
class ERB
  alias :执行 :run
  alias :结果 :result
  alias :代码 :src
  alias :定义方法 :def_method
  alias :定义模块 :def_module
  alias :定义类 :def_class
end
