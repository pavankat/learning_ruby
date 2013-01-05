# all instance variables are private and you need
# getters and setters to get and set them
class Car

	# belongs to the class not object
	attr_reader :state
	# attr_writer :state
	# or you could do attr_accessor :state

	# constructor method called initialize
	def initialize engine, tires
		# @engine and @tires are instance variables variables
		@engine = engine
		@tires = tires
	end

	def start
		@state = "running"
		# p is short for puts
		p "car has started"
	end

	def stop
		@state = "stopped"
		p "car has stopped"
	end
end

car = Car.new "My beautiful engine", [ 1,2,3,4 ]

#puts car.inspect

#car.state = "something" 
#(above line would work 
#if line 7 or 8 was uncommented)

car.start
p "the current car state is #{car.state}"

car.stop
p "The current car's state is #{car.state}"
