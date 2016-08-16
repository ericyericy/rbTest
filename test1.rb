print "What's your first name?"
first_name = gets.chomp.capitalize!

print "What's your last name?"
last_name = gets.chomp.capitalize!

print "What's you come from city?"
city = gets.chomp.capitalize!

print "What's you come from state?"
state = gets.chomp.upcase!

puts "Your name is #{first_name} #{last_name} and you live in #{city} come from #{state}"