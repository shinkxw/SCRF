#!/usr/bin/env ruby -w
# encoding: UTF-8
module S性能分析器
  @开始时间 = nil
  @线程_时间栈_哈希 = nil
  @线程_线程哈希_哈希 = nil
  @开始处理 = R断点.new(*%i[call c_call b_call]) {|信息|
    时间栈 = (@线程_时间栈_哈希[R线程.当前线程] ||= [])
    时间栈.入栈 [R进程.时间[0], 0.0]
  }
  @结束处理 = R断点.new(*%i[return c_return b_return]) {|信息|
    时间栈 = (@线程_时间栈_哈希[R线程.当前线程] ||= [])
    if 时间 = 时间栈.出栈
      线程哈希 = (@线程_线程哈希_哈希[R线程.当前线程] ||= {})
      数据 = (线程哈希[信息.调用对象.hash + 信息.方法名称.hash] ||= [0, 0.0, 0.0, ("#{信息.调用对象.inspect}#".sub(/\A\#<Class:(.*)>#\z/, '\1.') << 信息.方法名称.to_s)])
      数据[0] += 1
      消耗时间 = R进程.时间[0] - 时间[0]
      数据[1] += 消耗时间
      数据[2] += 消耗时间 - 时间[1]
      时间栈.末尾[1] += 消耗时间 if 时间栈.末尾
    end
  }
module_function
  def 开始分析
    @开始时间 = R进程.时间[0]
    @线程_时间栈_哈希 = {}
    @线程_线程哈希_哈希 = {}
    @开始处理.启用
    @结束处理.启用
  end
  def 停止分析
    @开始处理.禁用
    @结束处理.禁用
  end
  def 输出分析结果(f = STDERR)
    停止分析
    总耗时 = R进程.时间[0] - @开始时间
    总耗时 = 0.01 if 总耗时 == 0
    数据总计 = {}
    @线程_线程哈希_哈希.所有值.每个 do |线程哈希|
      线程哈希.每对 do |key, data|
        total_data = (数据总计[key] ||= [0, 0.0, 0.0, data[3]])
        total_data[0] += data[0]
        total_data[1] += data[1]
        total_data[2] += data[2]
      end
    end

    data = 数据总计.values
    data = data.sort_by{|x| -x[2]}
    sum = 0
    f.printf "   %%   cumulative   self                   self      total\n"
    f.printf " time   seconds   seconds    calls  ms/call  ms/call  name\n"
    for d in data
      sum += d[2]
      f.printf "%6.2f %8.2f  %8.2f %8d ", d[2]/总耗时*100, sum, d[2], d[0]
      f.printf "%8.2f %8.2f  %s\n", d[2]*1000/d[0], d[1]*1000/d[0], d[3]
    end
    f.printf "%6.2f %8.2f  %8.2f %8d ", 0.0, 总耗时, 0.0, 1     # ???
    f.printf "%8.2f %8.2f  %s\n", 0.0, 总耗时*1000, "#toplevel" # ???
  end
end
RubyVM::InstructionSequence.compile_option = {
  :trace_instruction => true,
  :specialized_instruction => false
}
END {
  S性能分析器::输出分析结果
}
S性能分析器::开始分析