#!/usr/bin/env ruby -w
# encoding: UTF-8
module S性能分析器
  class Wrapper < Struct.new(:类, :方法名, :hash)
    private :类=, :方法名=, :hash=
    def initialize(类, 方法名)
      super(类, 方法名, nil)
      self.hash = 类.hash + 方法名.hash
    end
    def to_s;("#{类.inspect}#".sub(/\A\#<Class:(.*)>#\z/, '\1.') << 方法名.to_s).中文化 end
    alias inspect to_s
  end

  # internal values
  @@开始时间 = nil
  @@stacks = nil # the map of stacks keyed by thread
  @@maps = nil # the map of call data keyed by thread, class and id. Call data contains the call count, total time,
  PROFILE_CALL_PROC = TracePoint.new(*%i[call c_call b_call]) {|tp|
    当前时间 = Process.times[0]
    stack = (@@stacks[Thread.current] ||= [])
    stack.push [当前时间, 0.0]
  }
  PROFILE_RETURN_PROC = TracePoint.new(*%i[return c_return b_return]) {|tp|
    当前时间 = Process.times[0]
    key = Wrapper.new(tp.defined_class, tp.method_id)
    stack = (@@stacks[Thread.current] ||= [])
    if tick = stack.pop
      threadmap = (@@maps[Thread.current] ||= {})
      data = (threadmap[key] ||= [0, 0.0, 0.0, key])
      data[0] += 1
      cost = 当前时间 - tick[0]
      data[1] += cost
      data[2] += cost - tick[1]
      stack[-1][1] += cost if stack[-1]
    end
  }
module_function
  def 开始分析
    @@开始时间 = Process.times[0]
    @@stacks = {}
    @@maps = {}
    PROFILE_CALL_PROC.enable
    PROFILE_RETURN_PROC.enable
  end
  def 停止分析
    PROFILE_CALL_PROC.disable
    PROFILE_RETURN_PROC.disable
  end
  def 输出分析结果(f = STDERR)
    停止分析
    总耗时 = Process.times[0] - @@开始时间
    总耗时 = 0.01 if 总耗时 == 0
    totals = {}
    @@maps.values.each do |threadmap|
      threadmap.each do |key, data|
        total_data = (totals[key] ||= [0, 0.0, 0.0, key])
        total_data[0] += data[0]
        total_data[1] += data[1]
        total_data[2] += data[2]
      end
    end

    data = totals.values
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