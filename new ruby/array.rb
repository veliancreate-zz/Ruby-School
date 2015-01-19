words = []
input = gets.chomp
while input != ''
	words.push(input)
	input = gets.chomp
end

ordered_array = []

count_words = words.length
words_duplicate = words

# words.each do |word|	
	
	i = 0
	while i < words.length
		words.each do |word|
			j = 0
			is_first = 0
			while j < words.length 
				if is_first == words.length
					ordered_array.unshift(word)
				end	
				if word <=words[j]
					is_first +=1
					j +=1
				elsif word > words[j]
					j +=1
				end
			end	
			words.unshift(word)
			words.shift
		end
		i +=1		
	end							
puts ordered_array

# if word <= words[i]
# 			is_first +=1
# 			i+=1
# 		elsif word > words[i]
# 			i +=1
# 		end
# 		if is_first == count_words
# 			ordered_array.unshift(word)
# 		end

