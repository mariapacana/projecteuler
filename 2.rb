#Sum of even-valued terms of fibonacci sequence below 4,000,000

@fibo = Array.new

@fibo[0] = 1
@fibo[1] = 2

x = 0

while (@fibo[x] + @fibo[x+1]) < 4000000
   @fibo[x+2] = @fibo[x]+@fibo[x+1]
   x = x + 1
end

y = 0
sum = 0

while y < @fibo.size
   if @fibo[y].even? then sum = sum + @fibo[y] end
   puts sum
   y = y + 1
end

puts sum
