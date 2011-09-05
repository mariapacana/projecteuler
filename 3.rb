#Largest prime factor of the number 600851475143

@bignum = 600851475143
@primefactors = Array.new

def is_prime(num)
  i = 2
  while (i < num)
     if (num % i == 0) then return false end
  	i = i + 1
  end
  return true
end

def biggest_prime(num)
	sqrt = Math.sqrt(num).to_i
	sqrt.downto(1).each do |i|
  	#print "(",i,",",is_prime(i),")","\n"
  	if ((num % i == 0) and is_prime(i)) then return i
  	end
	end
end

puts biggest_prime(@bignum)






