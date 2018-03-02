class ParallelEach
  require 'thread'
  include Enumerable

  def initialize(list, max_thread_count = 5)
    @queue, @max_thread_count = Queue.new, max_thread_count
    list.each{|i| @queue << i}
    @max_thread_count.times{@queue << nil}
  end

  def grep(pattern)
    self.class.new(super)
  end

  def each
    threads = @max_thread_count.times.map do
      Thread.new do
        Thread.current.abort_on_exception = true
        while job = @queue.pop
          yield job
        end
      end
    end
    threads.map(&:join)
  end
end

class Array
  def parallel_map(max_thread_count = 5)
    ParallelEach.new(self, max_thread_count).map{|job| yield job}
  end
end
