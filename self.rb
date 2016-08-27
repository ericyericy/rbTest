class Person
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def greet
		puts "Hello, my name is #{name}"
	end

	def get_name
		name
	end

	def set_name=(n)
		self.name = n
	end
end

bob = Person.new("bob", 20)
puts bob.greet
bob.set_name=("JAY")
puts bob.get_name
