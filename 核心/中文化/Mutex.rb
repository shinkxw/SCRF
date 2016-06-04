#!/usr/bin/env ruby -w
# encoding: UTF-8
class Mutex
  alias :锁定 :lock
  alias :尝试锁定 :try_lock
  alias :已锁定? :locked?
  alias :释放 :unlock
  alias :暂停 :sleep
  alias :同步 :synchronize
end
