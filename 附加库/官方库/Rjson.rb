#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'json'
class Hash
  alias :json化 :to_json
end
