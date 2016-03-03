def add(val_1, val_2)
	return val_1 + val_2
end

def subtract(val_1, val_2)
	return val_1 - val_2
end

def sum(array)
	count = 0
	array.each do |i|
	count = count + i
	end
	return count
end

def multiply(array)
	count = 1
	array.each do |i|
	count = count * i
	end
	return count
end

def power(num1, num2)
	return num1 ** num2
end

def factorial(value)
	count = 1
	while value >= 1 do
		count *= value
		value -= 1
	end
	return count
end