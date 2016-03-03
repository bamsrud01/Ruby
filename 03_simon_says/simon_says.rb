def echo(value)
	return value
end

def shout(value)
	return value.upcase
end

def repeat(value, number=2)
	string = ""
	while number > 0 do
		string += (" " + value)
		number -= 1
	end
	string[0] = ""
	return string
end

def start_of_word(word, number)
	return word[0, number]
end

def first_word(string)
	words = string.split
	return words[0]
end

def titleize(string)
	minors = ['a', 'an', 'and', 'do', 'for', 'in', 'is', 'of', 'over', 'on', 'or', 'the', 'to']
	words = string.split(" ")
	title = ""
	
	words.each do |segments|
		if minors.include?(segments)
			segments.downcase
		else
			segments.capitalize!
		end
	end
	words[0].capitalize!
	
	words.each do |segment|
	title += segment + " "
	end
	return title.strip
end