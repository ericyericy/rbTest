class Person
	attr_accessor :name, :age
	def initialize(name, age)
		@name = name
		@age = age
	end

	def greet
		puts "Hello, I am #{name}"
	end
end

class Engineer < Person
	attr_accessor :lang
	def initialize(name, age, lang)
		@lang = lang
		super(name, age)
	end
end

bob = Engineer.new("bob", 30, "Ruby")
puts bob.name
puts bob.age
puts bob.lang