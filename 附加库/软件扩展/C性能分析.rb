#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'ruby-prof'
C性能分析 = RubyProf
module C性能分析
  class << self
    alias :开始 :start
    alias :暂停 :pause
    alias :继续 :resume
    alias :停止 :stop
    alias :分析 :profile
  end
  C文本生成器 = FlatPrinter
  C详细文本生成器 = FlatPrinterWithLineNumbers
  C调用图生成器 = GraphPrinter
  C网页版调用图生成器 = GraphHtmlPrinter
  Dot格式生成器 = DotPrinter
  C调用树生成器 = CallTreePrinter
  C调用栈生成器 = CallStackPrinter
  C多种生成器 = MultiPrinter
  class AbstractPrinter
    def 输出(*参数);print(*参数) end
    alias :写入 :输出
  end
  class MethodInfo
    alias :old_source_file :source_file
    def source_file;old_source_file.识别为('UTF-8') end
  end
end
