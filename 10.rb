def prime_generate(num)    
	
	i = 3
	primes = [2]
	
 	while i < num
 	
 		upper_bound = Math.sqrt(i).ceil.to_i 		
 		j = 0
 		
 		found_factor = false
 		
 		while primes[j] < upper_bound
		
			#print "j=", j, ", primes[j]= ", primes[j], ", i = ", i, ", sqrt(i) = ", Math.sqrt(i), "\n"	
		
			if (i % primes[j] == 0) or (i % Math.sqrt(i) == 0) then 
				found_factor = true
				break
				
			end
			
			j = j+1
			
		end
	
		if found_factor != true then primes << i	end
		i = i + 2
		
	end
	
	return primes
	
end

#puts prime_generate(10000).inspect

def sum_primes(num)
	bignum = prime_generate(num)
	length = bignum.length
	sum = 0
	
	(0..length - 1).each do |i|
		sum = sum + bignum[i]
		#puts sum
	end
	
	return sum
end

puts sum_primes(2000000)


