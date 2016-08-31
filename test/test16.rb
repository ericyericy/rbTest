class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "hello, my name is #{name}"
  end

  def change_info(n, a)
    self.name = n
    self.age = a
  end
end

bob = Person.new("bob", 20)
bob.change_info("Jay", 30)

puts bob.name
puts bob.age