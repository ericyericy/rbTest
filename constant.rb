class Person
	LEGAL_AGE_TO_DRIVE = 18

	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def can_drive?
		if age >= LEGAL_AGE_TO_DRIVE
			puts "yes, #{name} can drive"
		else
			puts "no, #{name} can't drive"
		end
	end
end

bob = Person.new("bob", 10)
bob.can_drive?
