def binarygen (diglen)
    allnums = Array.new

    if (diglen == 1)
        allnums = ["0","1"] 
 
    else
       ones = Array.new
       zeroes = Array.new
       i = 0
          
         while i < binarygen(diglen-1).length
            ones << binarygen(diglen-1)[i] + "1"
            zeroes << binarygen(diglen-1)[i] + "0"
            allnums = ones + zeroes
            i = i + 1
          end
      end
    return allnums
end

def countones (str)
   i = 0
   numones = 0
   while i < str.length
      if (str[i].to_i-48 == 1)
         numones = numones + 1
      end
      i = i + 1
   end
  return numones
end

def countnums(arr, size)
  i = 0
  numnums = 0
  while i < arr.length
     if (countones(arr[i]) == size)
         numnums = numnums + 1
     end
     i = i+1
  end
  return numnums
end

mew = Array.new
mew =binarygen(40)

puts countnums(mew,20)
