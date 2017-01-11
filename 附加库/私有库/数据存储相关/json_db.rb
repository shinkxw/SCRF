#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'json'
需要 'ostruct'
module JsonDb
  class Object
    def initialize(file_path)
      @file_path = file_path
      @obj = load
    end
    def load_file;File.exist?(@file_path) ? File.open(@file_path, "r:UTF-8"){|f| f.read} : nil end
    def save;save_file(@obj.to_json) end
    def save_file(json);File.open(@file_path, "w:UTF-8"){|f| f.puts(json) } end
    def need_save_mathod?(mathod)
      @need_save_mathods ||= need_save_mathods
      @need_save_mathods.include?(mathod)
    end
    def method_missing(m, *args, &block)
      result = @obj.send(m, *args, &block)
      save if need_save_mathod?(m)
      result
    end
  end
  
  class Array < Object
    def load(json = load_file);json ? JSON.parse(json) : [] end
    def need_save_mathods;%i(<< push []= replace) end
  end
  
  class Hash < Object
    def load(json = load_file);json ? JSON.parse(json) : {} end
    def need_save_mathods;%i([]= replace) end
  end
  
  class OpenStructArray < Array
    def load(json = load_file)
      arr = json ? JSON.parse(json) : []
      arr.map{|obj| obj.is_a?(::Hash) ? OpenStruct.new(obj) : obj}
    end
    def save;save_file(@obj.map(&:to_h).to_json) end
  end
end
