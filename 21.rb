def sum_divs(num)
	sum = 1
	i = 2
	
	while (i < Math.sqrt(num).ceil.to_i) 
		if (num % i == 0) then sum = sum+i+(num/i)
		#print "sum =", sum, "i= ",i, "\n" 	
		end
		i = i+1
	end
	
	return sum
end

puts sum_divs(284)


def amicables(limit)

j = 0
@amnums = []

while j < limit
	if (sum_divs(sum_divs(j)) == j) then 
		if (sum_divs(j) != j) and (@amnums.include?(j) == false) then
			@amnums << sum_divs(j)
			@amnums << j
			puts @amnums.inspect
		end
	end
	j = j+1
end

puts @amnums
sum = @amnums.reduce(:+)

return sum

end

puts amicables(10000)
