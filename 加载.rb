#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '核心/加载'

忽略错误 do
  require_relative '附加库/包含'
  require_relative '附加模块/注册'
end

需要 'R单元测试'
