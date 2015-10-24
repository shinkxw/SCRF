#!/usr/bin/env ruby -w
# encoding: UTF-8
Dir.chdir(File.dirname(__FILE__)) do
  Dir.glob("*.rb").each{|fname| require_relative fname}
end