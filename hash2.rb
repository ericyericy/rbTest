# class Person
# 	attr_accessor :name, :age, :occupation, :hair_color, :favorite_book
# 	# 可以把方法改成用 hash 傳遞參數
# 	def initialize(options = {})
# 		@name = options[:name]
# 		@age = options[:age]
# 		@hair_color = options[:hair_color]
# 		@favorite_book = options[:favorite_book]
# 		@occupation = options[:occupation]
# 	end
# end

# hash = {
# 	name: "Joe",
# 	hair_color: "black",
# 	age: "20",
# 	occupation: "student",
# 	favorite_book: "1984"
# }

# bob = Person.new(hash)
# puts bob.favorite_book



class Person
	attr_accessor :name, :age, :occupation

	def initialize(options = {})
		@name = options[:name]
		@age = options[:age]
		@occupation = options[:occupation]
	end
end

hash = {
	name: "JAY",
	age: "20",
	occupation: "student"
}

jay = Person.new(hash)
puts jay.name
