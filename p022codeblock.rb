# p022codeblock.rb

=begin  
  Ruby Code blocks are chunks of code between braces or  
  between do- end that you can associate with method invocations  
=end  
def call_block  
  puts 'Start of method'  
  # you can call the block using the yield keyword 
  # yield will execute {puts 'In the block'}
  yield  
  yield  
  puts 'End of method'  
end  
# Code blocks may appear only in the source adjacent to a method call  
call_block {puts 'In the block'}  
call_block {puts (13...19).include?(1)}

# You can provide parameters to the call to yield:  
# these will be passed to the block  
def call_block  
  yield('hello', 99)  
end  
call_block {|str, num| puts str + ' ' + num.to_s} 

def try  
  if block_given?  
    yield  
  else  
    puts "no block"  
  end  
end  
try # => "no block"  
try { puts "hello" } # => "hello"  
try do puts "hello" end # => "hello"