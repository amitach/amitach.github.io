class FooBaar
def foo
puts "#{self.inspect} 1"
@a = "hello"
bar() # Same as self.my_method()
puts "#{self.inspect} 2"
self
end

def bar
puts "#{self.inspect} 3"
@a = @a + " world"
puts "#{self.inspect} 4"
end
end
self
obj = FooBaar.new
obj.foo 
self


class FooBaar
	def foo
		puts "#{self.inspect} 1"
		@a = "hello"
	    bar() # Same as self.my_method()
	    puts "#{self.inspect} 2"
	    self
	end

	def bar
		puts "#{self.inspect} 3"
		@a = @a + " world"
		puts "#{self.inspect} 4"
	end
end
 => :bar 
head :072 > self
 => main 
head :073 > obj = FooBaar.new
 => #<FooBaar:0x00000001b787d8> 
head :074 > obj.foo 
#<FooBaar:0x00000001b787d8> 1
#<FooBaar:0x00000001b787d8 @a="hello"> 3
#<FooBaar:0x00000001b787d8 @a="hello world"> 4
#<FooBaar:0x00000001b787d8 @a="hello world"> 2
 => #<FooBaar:0x00000001b787d8 @a="hello world"> 
head :075 > self
 => main 
