def add_two(arr)
	return "missing a value!!" if arr.any? { |x| x[:age] == nil }

	arr.map { |x| x[:age] = x[:age] + 2 }
	arr
end

hash1 = { age: 15 }

hash2 = { age: 25 }

hash3 = { age: nil }

arr = [hash1, hash2, hash3]

puts add_two(arr)