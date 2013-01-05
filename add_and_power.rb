# this is a comment

def add_and_power a,b 
	(a+b)**(a+b)
end

puts "First number please?"
input1 = gets

puts "Second number please?"
input2 = gets

puts add_and_power input1.to_i, input2.to_i