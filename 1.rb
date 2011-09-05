x = 0
sum = 0

while (x < 1000)

    if (x.divmod(3)[1] == 0) or (x.divmod(5)[1] == 0) then sum = sum + x 
    end
    
    x = x + 1
end

puts sum
