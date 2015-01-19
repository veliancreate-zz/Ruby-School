
byes_in_a_row = 0
while byes_in_a_row <3
	input = gets.chomp
	if input != input.upcase
		puts'HUH? SPEAK UP!'
		byes_in_a_row = 0
	end	
	if input == 'BYE' and byes_in_a_row < 2
		puts 'HUH? SPEAK UP!'
		byes_in_a_row +=1	
	elsif input == 'BYE' and byes_in_a_row ==2
		puts 'SEE YA'
		byes_in_a_row +=1
	end	
	if input == input.upcase and input != 'BYE' 
		puts 'NO, NOT SINCE ' + rand(1938..1950).to_s + '!'
		byes_in_a_row = 0	
	end 	
end



