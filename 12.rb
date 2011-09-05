def triangle_gen(limit)

	triangle = [1,3]
	
	(3...limit).each do |i|
		triangle << triangle[i-2]+i
	end
	
	return triangle
	
end

def count_divisors(num)

	divis = 0
	sqrt = Math.sqrt(num)
	upper= Math.sqrt(num).ceil.to_i
	
	(1...upper).each do |i|
		#print "i =", i, " divis = ", divis, " upper_bound =", upper, "\n"
		if (num % i == 0) then divis = divis + 2 end
	end
	
	if (num % sqrt == 0) then divis = divis + 1 end
		#print "     divis = ", divis, " sqrt =", sqrt, " upper =", upper, "\n"
	divis
	
end

##############################

def each_triangle
	i = 1
	last_triangle = 0
  loop do
  	triangle = (i == 1) ? 1 : last_triangle + i
  	yield triangle
  	last_triangle = triangle
  	i += 1
  end
end

each_triangle() do |t|
  if count_divisors(t) > 500
		puts t
		exit
	end
end

##############################

#(1..40).each do |i|
#	print "(",i,",",count_divisors(i),")\n"
#end

def find_val(start, limit)
	mew = triangle_gen(limit)

	i = start
	
	#mew.each_with_index do |num, i|
	#	print "i = ", i ,", triangle = ", num, ", divisors =", count_divisors(num), "\n"
	#end
	
	loop do 
		i += 1
		
		print "i = ", i ,", triangle = ", mew[i], ", divisors =", count_divisors(mew[i]), "\n"
		
		if count_divisors(mew[i]) > 500 then
			return mew[i]
		end
	end
	
end

#puts find_val(5000,1000000).inspect

		
		
		
	
