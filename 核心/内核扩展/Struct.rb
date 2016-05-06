#!/usr/bin/env ruby -w
# encoding: UTF-8
class << Struct
  def 固定哈希
    设置方法别名(:old_hash, :hash)
    定义方法(:hash){ @hash ||= object_id }
    self
  end
end