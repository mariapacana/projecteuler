triplets = Array.new

(1...1000).each do |i|
   (2...1000).each do |j|
       upper_k = 1000-i-j+1
       (3...upper_k).each do |k|
           if (k**2 == i**2 + j**2) 
           		triplets << [i,j,k] 
           end
        end
    end
end

len = triplets.length
z = 0

while z < len - 3
    #print "z: ",z,", triplets: ", triplets[z][0]+ triplets[z][1]+triplets[z][2] ,"\n"
    if (triplets[z][0]+ triplets[z][1]+triplets[z][2] == 1000) 
    		print "answer is:", "[",triplets[z][0],",",triplets[z][1],","triplets[z][2],"]"
			  break
	  end
    z = z + 1
end
 

