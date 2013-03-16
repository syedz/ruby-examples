# p031motorcycletest.rb  
require_relative 'p030motorcycle'  
m = MotorCycle.new('Yamaha', 'red')  
m.start_engine
m.start_engine

# Adding a method to an existing class
class MotorCycle  
  def disp_attr  
    puts 'Color of MotorCycle is ' + @color  
    puts 'Make  of MotorCycle is ' + @make  
  end  
end  
m.disp_attr  
m.start_engine  
puts self.class  
puts self 