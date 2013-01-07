# similar to inheritance.rb 

=begin
	do this when you only have a 
	special set of attributes that
	only compliment items amount of data
	instead of behavior 
=end

class Item
	attr_reader :name

	def initialize(name, special_attributes = [])
		@id, @name = 1, name
		@special_attributes = special_attributes
	end

end