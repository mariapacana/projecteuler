bignum = 10**999

def make_fibo
	i = 1
	fb = []
	
  loop do
  	fb[i] = (i == 1) ? 1 : ((i == 2) ? 1 : fb[i-1] + fb[i-2])
  	#puts fb[i]
  	yield fb[i], i
  	i += 1
  end
  
end

make_fibo() do |t, i|
  if t > bignum
		puts t
		puts i
		puts t.to_s.length
		exit
	end
end

