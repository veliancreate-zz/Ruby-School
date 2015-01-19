
puts "Input an integer to return its English equivalent"
input = gets.chomp
number = input.to_i



def number_to_words(number)

	_small_numbers = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine",
	      "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
	      "Eighteen", "Nineteen"]

	_tens = ['', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']

	_large_numbers = ["", "Thousand", "Million", "Billion"]

	if number == 0
		return _small_numbers[0]
	end

	digit_groups = []
	group_text = []
	
	i=0
	while i<4
		digit_groups[i] = number % 1000
		number = number / 1000
		i+=1 
	end
	
	j = 0
	while j<4
		group_text[j] = three_digit_group_to_words(digit_groups[j])
		j+=1
	end	

	combined = group_text[0]

	append_and = (digit_groups[0] > 0) && (digit_groups[0] < 100)
	
	k = 0
	while k<4
		if digit_groups[k] !=0
			prefix = group_text[k] + " " + _large_numbers[k]
			if combined.length != 0
				prefix += append_and ? " and " :  ", "
			end
			append_and = false
			combined = prefix += combined

		end	
		k +=1	
	end
	puts combined

end

def three_digit_group_to_words(three_digits)
	_small_numbers = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine",
	      "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
	      "Eighteen", "Nineteen"]

	_tens = ['', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']

	_large_numbers = ["", "Thousand", "Million", "Billion"]

	group_text = ""
	hundreds = three_digits/100
	tens_units = three_digits % 100

	if hundreds != 0
		group_text += _small_numbers[hundreds] + "hundred"
		if tens_units != 0
			group_text += " and "
		end

		tens = tens_units / 10
		units = tens_units % 10
		if tens >=2
			group_text+=_tens[tens]
			if units !=0
				group_text += " " +_small_numbers[units]
			end
		end
	elsif tens_units != 0
		group_text += _small_numbers[tens_units]
	end
	return group_text	 				
end	

puts number_to_words(number)

	

	


	

	





 	