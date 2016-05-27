#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'spreadsheet'
C电子表格 = Spreadsheet
module C电子表格
  class << self
    alias :编码 :client_encoding
    alias :打开 :open
  end
  module Excel
    class Workbook
      alias :工作表 :worksheet
      alias :所有工作表 :worksheets
    end
    class Worksheet
      alias :每行 :each
    end
    class Row
      alias :格式 :format
    end
  end
  class Format;end
end
