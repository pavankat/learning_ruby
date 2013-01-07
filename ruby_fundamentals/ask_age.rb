# ask for age
puts "What is your age?"
age = gets.to_i

# process
output = \
	if age < 10
		"it's a young person"
	elsif age < 14
		"it's a pre teen"
	elsif age < 17
		"it's a teen"
	elsif age < 22
		"maybe in college"
	elsif age > 22
		"out of college maybe"
	end

# output
puts output