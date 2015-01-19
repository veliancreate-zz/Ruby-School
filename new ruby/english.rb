puts "Input an integer to return its English equivalent"
input = gets.chomp
number = input.to_i
length = input.length

onesPlace = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

places = {
	ones: ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'],
	tens:  ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'],	
	teens: ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'],
}


def ones_method number, places
	ones_div = number / 1
	return_string = onesPlace[ones_div]
	return_string
end

def tens_method number, onesPlace, teens, tensPlace
	tens_division = number / 10
	tens_modulo = number % 10
	single_num = ones_method tens_modulo, onesPlace
	if tens_division == 1
		if tens_modulo == 0
			return_string = tensPlace[0]	
		else
			return_string = teens[tens_modulo-1]	
		end
	else tens_division > 1
		if tens_modulo == 0
			return_string = tensPlace[tens_division-1]	
		else	
			return_string = tensPlace[tens_division-1] + '-' + single_num
		end
	end
	return_string
end

def hundreds_method number, onesPlace, teens, tensPlace
	hundreds_div = number / 100
	hundreds_mod = number % 100
	single_num = ones_method hundreds_mod, onesPlace 
	tens_num = tens_method hundreds_mod, onesPlace, teens, tensPlace
	if hundreds_mod == 0
		return_string = onesPlace[hundreds_div] + " hundred"
	elsif hundreds_mod < 10 && hundreds_mod > 0
		return_string = onesPlace[hundreds_div] + " hundred and " + single_num
	else			
		return_string = onesPlace[hundreds_div] + " hundred and " + tens_num
	end	
	return_string
end



# 0
if number == 0
	puts "zero"
end	

#numbers 1-10
if length == 1 && number !=0
	puts ones_method number, onesPlace
end	

#10-99
if length ==2
	puts tens_method number, onesPlace, teens, tensPlace
end

#100 - 999
if length == 3
	puts hundreds_method number, onesPlace, teens, tensPlace
end		


	

 	