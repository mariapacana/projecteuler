mew = []

(1..1000).each do |i|
		mew << i**i
end

sum = mew.reduce(:+).to_s
puts sum
puts sum[-10..-1]


	
