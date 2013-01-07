# input

# strip cleans spaces from the start and end of the string
puts "input a car model."
car_model = gets.strip

# process

output = case car_model \
	when "Focus", "Fiesta" then "Ford"
	when "Ibiza" then "Seat"
	when "Civic" then "Honda"
	else "Unknown model"
	end

# output

puts "The car company for #{car_model} is ", output