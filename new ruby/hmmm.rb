single_num = ones_method(thousands_mod, places)
	tens_num = tens_method(thousands_mod, places)
	hundreds_num = hundreds_method(thousands_mod, places)

if thousands_mod == 0 
		if thousands_div >= 100
			return_string = hundreds_thou + " thousand"
		elsif thousands_div < 100 && thousands_div >=  10
			return_string = tens_thou + " thousand"
		elsif thousands_div < 10
			return_string = single_thou + " thousand"
		end
	elsif thousands_mod < 10 && thousands_mod > 0
	 	if thousands_div >= 100
			return_string = hundreds_thou + " thousand and " + single_num
		elsif thousands_div < 100 && thousands_div >=  10
			return_string = tens_thou + " thousand and " + single_num
		elsif thousands_div < 10
			return_string = single_thou + " thousand and " + single_num
		end
	elsif thousands_mod > 10 && thousands_mod < 100
	 	if thousands_div >= 100
			return_string = hundreds_thou + " thousand and " + tens_num
		elsif thousands_div < 100 && thousands_div >=  10
			return_string = tens_thou + " thousand and " + tens_num
		elsif thousands_div < 10
			return_string = single_thou + " thousand and " + tens_num
		end
	elsif thousands_mod >= 100
	 	if thousands_div >= 100
			return_string = hundreds_thou + " thousand and " + hundreds_num
		elsif thousands_div < 100 && thousands_div >=  10
			return_string = tens_thou + " thousand and " + hundreds_num
		elsif thousands_div < 10
			return_string = single_thou + " thousand, " + hundreds_num
		end 	 	 
	end	
	return_string