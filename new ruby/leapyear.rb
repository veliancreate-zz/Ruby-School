puts 'Please enter the beginning year'
start_year = gets.chomp.to_i
puts 'Please enter the end year'
end_year = gets.chomp.to_i

year = start_year
while year <= end_year
	if year % 4 == 0
		if year < 400 
			puts year
			year +=1
		end	
		if year >= 400 
			if year % 100 == 0
				if year % 400 == 0
					puts year
					year+=1
				elsif year % 400 != 0
					year +=1
				end		
			elsif year % 100 != 0
				puts year
				year+=1 	
			end				
		end
	elsif year % 4 !=0
		year+=1
	end
end		 	







