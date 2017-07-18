module CodeAnalyse
  module_function
  
  def analyse(mod = Object)
    original_consts = all_consts(mod)
    yield
    new_consts = all_consts(mod) - original_consts
    new_consts.each do |const_name|
      const = Object.const_get(const_name)
      case const
      when Module
	p const
	const.instance_methods(false).each do |method_name|
	  new_method_name = "st_#{method_name}"
	  const.send(:alias_method, new_method_name, method_name)
	  const.send(:define_method, method_name) do |*arg|
	    p "#{self}  #{method_name}  #{arg}"
	    send(new_method_name, *arg)
	  end
	end
      else
      end
    end
  end
  def all_consts(root_mod)
    result = []
    current_mods = [root_mod]
    until current_mods.empty?
      next_mods = []
      current_mods.each do |mod|
	mod.constants.each do |const_name|
	  result << "#{mod.to_s}::#{const_name}"
	  const = mod.const_get(const_name)
	  next_mods << const if const.is_a?(Module)
	end
      end
      current_mods = next_mods
    end
    result
  end
end

#~ CodeAnalyse.analyse(Estimator) do
  #~ require 'C:\Users\Administrator\AppData\Roaming\SketchUp\SketchUp 2017\SketchUp\Plugins\not_use\Estimator_Takeoff_Length'
#~ end
