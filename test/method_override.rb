class Person
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end

	def greet
		put "Hello, I am #{name}"
	end
end

class Engineer < Person
	def greet
		puts "I am an Engineer, hello."
	end
end

class Chinese < Person
	def greet
		puts "I am a chinese, hello"
	end
end

bob = Engineer.new("bob", 30)
bob.greet
jay = Chinese.new("jay", 35)
jay.greet