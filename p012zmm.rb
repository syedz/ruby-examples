# p012zmm.rb

class Dummy  
  def method_missing(m, *args, &block)  
    puts "There's no method called #{m} here -- please try again."  
  end  

  def anything
  	puts "anything"
  end
end  
Dummy.new.anything  