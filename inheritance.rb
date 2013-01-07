=begin
	do this when you have a subclass 
	that increases behavior besides 
	the parent class
=end

class Item
	attr_reader :name

	def initialize(name)
		@id, @name = 1, name
	end

end

class SpecialItem < Item
	def initialize name, special_attributes

		# super is like parent in php
		super name # refers to the name in line 4
		@special_attributes = special_attributes
	end

end
