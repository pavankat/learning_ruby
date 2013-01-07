# using mixins as an alternative 
# to inheritance/composition

# we use inheritance/composition for this here:

class User

	def initialize username, password
		@username = username
		@password = password
	end

	def login
	end

	def logout
	end

	def sign_up
	end

end

class Student < User
	def initialize name, born_at, gender
		@name = name
		@born_at = born_at
		@gender = gender
	end

	def age
		age Date.today.year - @born_at.year
		age -= 1 if Date.today < birthday + age.years
	end
end

class Teacher < User
	def initialize name, proficiency, list_of_grades
		@name = name
		@proficiency = proficiency
		@list_of_grades = list_of_grades
	end
end
