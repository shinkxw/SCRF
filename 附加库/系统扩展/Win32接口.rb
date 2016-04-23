#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'win32/api'
Win32接口 = Win32::API
Win32接口回调 = Win32::API::Callback
class Win32接口
  alias :请求 :call
end
