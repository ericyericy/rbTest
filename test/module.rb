module Knowledge
	def program
		puts "I know how to program"
	end
end

class Person
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end
end

class Engineer < Person
	include Knowledge
end

bob = Engineer.new("bob", 30)
bob.program