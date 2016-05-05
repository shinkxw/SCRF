#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 "minitest/spec"
R单元测试 = Minitest

module R内核
  alias :描述 :describe
end

class Module
  alias :断言转换 :infect_an_assertion
end

module R单元测试
  class << self
    alias :运行 :run
    alias :自动运行 :autorun
  end
  
  module Spec::DSL
    alias :它 :it
    alias :添加测试 :it
    alias :设置 :let
    alias :之前 :before
    alias :之后 :after
    module InstanceMethods
      alias :值 :_
      alias :期望 :_
    end
  end
  
  module Assertions
    alias :断言 :assert
    alias :断言为空 :assert_empty
    alias :断言不为空 :refute_empty
    alias :断言相等 :assert_equal
    alias :断言不等 :refute_equal
    alias :断言接近 :assert_in_delta
    alias :断言不接近 :refute_in_delta
    alias :断言包含 :assert_includes
    alias :断言不包含 :refute_includes
    alias :断言实例 :assert_instance_of
    alias :断言非实例 :refute_instance_of
    alias :断言属于 :assert_kind_of
    alias :断言不属于 :refute_kind_of
    alias :断言匹配 :assert_match
    alias :断言不匹配 :refute_match
    alias :断言为无 :assert_nil
    alias :断言不为无 :refute_nil
    alias :断言操作符 :assert_operator
    alias :断言输出 :assert_output
    alias :断言无输出 :assert_silent
    alias :断言引发 :assert_raises
    alias :断言响应 :assert_respond_to
    alias :断言不响应 :refute_respond_to
    alias :断言相同 :assert_same
    alias :断言不同 :refute_same
    alias :断言抛出 :assert_throws
  end

  module Expectations
    断言转换 :assert_empty,       :为空, :unary
    断言转换 :refute_empty,       :不为空, :unary
    断言转换 :assert_equal,       :等于
    断言转换 :refute_equal,       :不等于
    断言转换 :assert_in_delta,    :接近
    断言转换 :refute_in_delta,    :不接近
    断言转换 :assert_includes,    :包含, :reverse
    断言转换 :refute_includes,    :不包含, :reverse
    断言转换 :assert_instance_of, :为实例
    断言转换 :refute_instance_of, :非实例
    断言转换 :assert_kind_of,     :属于
    断言转换 :refute_kind_of,     :不属于
    断言转换 :assert_match,       :匹配
    断言转换 :refute_match,       :不匹配
    断言转换 :assert_nil,         :为无, :unary
    断言转换 :refute_nil,         :不为无, :unary
    断言转换 :assert_operator,    :应, :reverse
    断言转换 :refute_operator,    :应不, :reverse
    断言转换 :assert_output,      :应输出, :block#proc { ... }.应输出 out_or_nil [, err]
    断言转换 :assert_silent,      :不输出, :block
    断言转换 :assert_raises,      :应引发, :block#proc { ... }.应引发 exception
    断言转换 :assert_respond_to,  :响应, :reverse
    断言转换 :refute_respond_to,  :不响应, :reverse
    断言转换 :assert_same,        :相同于
    断言转换 :refute_same,        :不同于
    断言转换 :assert_throws,      :应抛出, :block
  end
  
  class SummaryReporter
    def start
      super
      io.puts "运行测试选项: #{options[:args]}"
      #io.puts
      io.puts "# 测试中:"
      io.puts
      self.sync = io.respond_to? :"sync=" # stupid emacs
      self.old_sync, io.sync = io.sync, true if self.sync
    end

    def report
      super

      io.sync = self.old_sync

      io.puts unless options[:verbose] # finish the dots
      io.puts
      io.puts 统计
      io.puts 汇总结果
      io.puts 概要
    end

    def 统计
      "耗时 %.6f秒, %.4f 测试/秒, %.4f 断言/秒." % [total_time, count / total_time, assertions / total_time]
    end

    def 汇总结果
      filtered_results = results.dup
      filtered_results.reject!(&:skipped?) unless options[:verbose]

      s = filtered_results.each_with_index.map {|result, i| "\n%3d) %s" % [i+1, result]}.join("\n") + "\n"

      s.force_encoding(io.external_encoding) if
        ENCS and io.external_encoding and s.encoding != io.external_encoding

      s
    end

    def 概要
      extra = ""

      extra = "\n\n你跳过了测试. 使用--verbose选项运行查看详细信息." if
        results.any?(&:skipped?) unless options[:verbose] or ENV["MT_NO_SKIP_MSG"]

      "%d 测试, %d 断言, %d 失败, %d 错误, %d 跳过%s" % [count, assertions, failures, errors, skips, extra]
    end
  end
  
  class ProgressReporter
    def record result
      io.print "%s#%s (%.2f 秒) " % [result.class, result.name, result.time] if
        options[:verbose]
      io.print result.result_code
      io.puts if options[:verbose]
    end
  end
end