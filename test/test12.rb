class Person
	def initialize(name)
		@name= name
	end

	def greet(word)
		puts "#{word},#{@name}"
	end
end

eric = Person.new("Eric")
xiao = Person.new("Xiao")

eric.greet("Hello")
xiao.greet("Good")