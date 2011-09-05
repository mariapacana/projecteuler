verybignum = (2**1000).to_s

i = 0
sum = 0
while i < verybignum.length
	sum = sum + verybignum[i]-48
	i = i + 1
end

puts sum
