#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'RGB'
module SCRF
  #色调H: 用角度度量，取值范围为0°～359°, 红0°,黄60°,绿120°,青180°,蓝240°,品红300°
  #饱和度S: 取值范围为0.0～1.0，值越大，颜色越饱和。
  #亮度V: 取值范围为0(黑色)～255(白色)。
  class HSV
    可读属性 :色调, :饱和度, :亮度
    def 初始化(色调, 饱和度, 亮度)
      @色调, @饱和度, @亮度 = 色调, 饱和度, 亮度
      数值验证
    end
    def 数值验证
      引发异常('HSV数值类型有误','色调必须为整数') unless @色调.是? R整数
      引发异常('HSV数值类型有误','饱和度必须为数值') unless @饱和度.是? R数值
      引发异常('HSV数值类型有误','亮度必须为整数') unless @亮度.是? R整数
      @色调 = 0 if @色调 == 360
      引发异常('HSV数值有误',"色调值#{@色调},超过了取值范围") if (@色调 < 0 || @色调 > 359)
      引发异常('HSV数值有误',"饱和度值#{@饱和度},超过了取值范围") if (@饱和度 < 0 || @饱和度 > 1)
      引发异常('HSV数值有误',"亮度值#{@亮度},超过了取值范围") if (@亮度 < 0 || @亮度 > 255)
    end
    def 转换为RGB
      return RGB.新建(@亮度, @亮度, @亮度) if @饱和度 == 0
      h = @色调 / 60.0
      i = @色调 / 60
      f = h - i
      a = (@亮度 * (1 - @饱和度)).四舍五入
      b = (@亮度 * (1 - @饱和度 * f)).四舍五入
      c = (@亮度 * (1 - @饱和度 * (1 - f))).四舍五入
      case i
      when 0 then return RGB.新建(@亮度, c, a)
      when 1 then return RGB.新建(b, @亮度, a)
      when 2 then return RGB.新建(a, @亮度, c)
      when 3 then return RGB.新建(a, b, @亮度)
      when 4 then return RGB.新建(c, a, @亮度)
      when 5 then return RGB.新建(@亮度, a, b)
      end
    end
    def 字符串;"<HSV: #{@色调}, #{@饱和度}, #{@亮度}>" end
    alias :to_s :字符串
  end
  定义测试集 'HSV测试' do
    添加测试 'RGB转换测试' do
      HSV.新建(175,0.3,102).转换为RGB.字符串.应该为 '<RGB: 71, 102, 99>'
    end
  end
end
