#instance method
class Person
	def initialize(name, age)
		#instance variable
		@name = name
		@age = age
	end

	def greet
		puts "Hello, #{@name}"
	end

	#getter method
	def getName
		puts @name
	end

	def getAge
		puts @age
	end

	#setter method
	def setName(name)
		@name = name
	end
end

bob = Person.new("Bob", 20)
# bob.name

# bob.getName
# bob.getAge

bob.setName("Json")
bob.greet