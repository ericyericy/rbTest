class Person

	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def greet
		# puts "Hello, #{@name}"  ???
		puts "Hello, #{name}"
	end
end

bob = Person.new("bob", 30)
bob.greet

bob.name = "Jason"
bob.age = 15
puts bob.name
puts bob.age

