#difference between sum of squares and square of sums

i = 0
@sumsquare = 0
@sum = 0
@squaresum = 0

loop do
  i+=1
  @sumsquare = @sumsquare + i**2
  @sum = @sum + i
  #puts i
  break if i == 100
end

@squaresum = @sum**2

print "(@sumsquare,@squaresum) = (",@sumsquare,",",@squaresum,")\n"
print "\n"
print "difference =",@sumsquare - @squaresum,"\n"

