class Person
	def initialize(name, age)
		@name = name
		@age = age
	end

	def greet
		puts "Hello, #{@name}"
	end
end

bob = Person.new("Bob", 20)
bob.greet
