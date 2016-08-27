class Person
  attr_accessor :name, :age

  @@number_of_people = 0

  def initialize(name, age)
    @name = name
    @age = age
    @@number_of_people += 1
  end

  def greet
    puts "hello, my name is #{name}"
  end

  def change_info(n, a)
    self.name = n
    self.age = a
  end

  def self.hello
    puts "Hello, I am #{name}"
  end

  def self.info
    puts @@number_of_people
  end
end

Person.info

bob = Person.new("bob", 20)
Person.info

jay = Person.new("jay", 30)
Person.info
