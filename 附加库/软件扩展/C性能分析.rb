#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'ruby-prof'
C性能分析 = RubyProf
#~ R文件.打开('D:\kanxinwei\Desktop\out.html', 'w'){|文件| C性能分析.分析{ ... }.生成(:调用栈).写入(文件)}
module C性能分析
  class << self
    alias :开始 :start
    alias :暂停 :pause
    alias :继续 :resume
    alias :停止 :stop
    alias :结束 :stop
    alias :分析 :profile
  end
  C分析结果 = Profile
  class C分析结果
    def 生成(生成器类型, *其他参数);C性能分析.获取常量("C#{生成器类型}生成器").新建(self, *其他参数) end
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
