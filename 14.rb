# #broken?

def collatz(num)
	mew = Array.new
	if (num == 1) then return mew
	elsif num.even? then return collatz(num/2).insert(0,num/2)
	else return collatz(3*num+1).insert(0,3*num + 1)
	end
end

# (2..12).each do |i|
#   print "(",i,",",collatz(i).inspect,",",collatz(i).length,")\n"
#   print "(",i,",",collatz(i).length,")\n"
# end


longest = 0
starting = 0
(2..1000000).each do |i|
  if i.odd? and collatz(i).length > longest then 
  	longest = collatz(i).length 
  	starting = i
  end
end

print "longest = ",starting,"\n"


     
