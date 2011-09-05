#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# 11 12 13 14 15 16 17 18 19 20

@divis = [11,12,13,14,15,16,17,18,19,20]

def divisible(num)
   for i in @divis
      #puts
      #print "(i,num) = (",i,",",num,")\n"
      if (num % i) != 0 then return false end
   end
   puts num
   return true
end

i = 2
loop do
  i+=1
  #puts i
  break if divisible(i*11*13*17*19)
end


