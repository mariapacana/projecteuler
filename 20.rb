#sum of digits in 100!

def factorial(num)
   if (num == 1) then return 1
   elsif (num == 2) then return 2
   else return num*factorial(num-1)
   end
end

verybignum = factorial(100).to_s

i = 0
sum = 0
while i < verybignum.length
	sum = sum + verybignum[i]-48
	i = i + 1
end

puts sum
