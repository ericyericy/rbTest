class Person
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end

	def identity
		puts "Secretly , #{secret_method}"
	end

	private
	
	def secret_method
		"I am Iron Mam!"
	end
end

bob = Person.new("bob", 35)
bob.identity

