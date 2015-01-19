num = 99
while num > 2
	puts num.to_s + 'bottles of beer on the wall, ' + num.to_s + 'bottles of beer. Take one down, you have ' + (num-1).to_s + ' bottles of beer on the wall.'
	num -=1
end
if num == 2
	puts '2 bottles of beer, take 1 down, pass it around, you have 1 bottle of beer on the wall'
	num -=1
end
if num ==1
	puts '1 bottle of beer on the wall take 1 down you have 0 bottles of beer.'
	num -=1
end	
