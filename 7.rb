#The 10001st prime
#Find the 10001st prime.

def is_prime(num)
  i = 2
  sqrt = Math.sqrt(num).to_i
  while (i < (sqrt+1)) #stop at sqrt
     #print num, ",", i, "\n"
     if (num % i == 0) then return false end
  	i = i + 1
  end
  return true
end

j = 2
counter = 0
loop do
  print j, ",", counter, "\n"
	if is_prime(j) then 
		counter = counter + 1 
	end
	j = j + 1
	break if (counter == 10001)
end

puts j-1




