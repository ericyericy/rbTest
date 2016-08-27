class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    # puts "hello, my name is #{name}"  ???
    puts "hello, my name is #{self.name}"
  end
end

class Engineer < Person
  def program
    puts "I know programing"
  end
end

class Salesman < Person
  def talk
    puts "I can talk....."
  end
end

bob = Engineer.new("bob", 25)
jay = Salesman.new("jay", 30)
puts bob.greet
puts jay.greet


