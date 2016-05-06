#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'S键盘'
class C阻塞器
  可读属性 :是否开启
  def 初始化(开关快捷键 = %w(S), 继续快捷键 = %w(N))
    @是否开启, @开关快捷键, @继续快捷键 = false, 开关快捷键, 继续快捷键
  end
  def 进行调用
    状态切换判断
    if @是否开启
      yield if 提供了块?
      循环 do
        if S键盘.按下?(*@开关快捷键)
          @是否开启 = false
          暂停(0.1)
          break
        end
        break if S键盘.按下?(*@继续快捷键)
        暂停(0.05)
      end
    end
  end
  def 状态切换判断
    if S键盘.按下过?(*@开关快捷键)
      @是否开启 = !@是否开启
      暂停(0.05)
    end
  end
end
