def triangle_gen(limit)

	triangle = [1,3]
	
	(3...limit).each do |i|
		triangle << triangle[i-2]+i
	end
	
	return triangle
	
end

def count_divisors(num)

	divis = 1
	
	if num.even? then upper_bound = num/2 
	else upper_bound = num/2 + 1
	end
	
	(1..upper_bound).each do |i|
	#print "i =", i, " divis = ", divis, " upper_bound =", upper_bound, "\n"
		if (num % i == 0) then divis = divis + 1 end
	end
	
	#print "num =", num, " divis =", divis, "\n"
	return divis
	
end

def find_val(limit)
	mew = triangle_gen(limit)

	(400..500).each do |i|
		if (count_divisors(mew[i]) > 6) then
			return mew[i]
			break
		else
			return "Nope."
		end
	end
end

puts find_val(10000).inspect
			
		
		
	
