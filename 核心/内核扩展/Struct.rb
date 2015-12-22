#!/usr/bin/env ruby -w
# encoding: UTF-8
class << Struct
  def 固定哈希
    重命名方法(:old_hash, :hash)
    定义方法(:hash){ @hash ||= object_id }
    self
  end
end