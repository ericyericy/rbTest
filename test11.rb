def greater_than_5(num)
	if num >= 5
		puts true
	else
		puts false
	end
end

num = 10
puts greater_than_5(num)


def area_of_circle(radius)
	3.14 * radius ** 2
end

puts area_of_circle(10)