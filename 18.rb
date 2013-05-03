#!/usr/bin/env ruby

# Use a tree data structure??

triangle = "3
7 4
2 4 6
8 5 9 3 "

triangle1 = "3
7 4"

triangle3 = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

triangle4 = File.read('triangle.txt')

def maxsum(array)
  sum = 0
  
  new_tri = Array.new
  new_tri = array.split("\n")
  length = new_tri.length
  (0..length-1).each do |i|
    new_tri[i] = new_tri[i].split(" ").collect{|i| i.to_i}
  end
  new_tri.reverse!
  
  #puts new_tri.inspect
  
  i = 1
  while i < length
    j = 0
    while j < length
      #print i.to_s+","+j.to_s+"\n"
      if new_tri[i][j]
        if (new_tri[i-1][j] > new_tri[i-1][j+1]) 
          #print "new_tri[i][j] = "+new_tri[i][j].to_s+", new_tri[i-1][j] = "+new_tri[i-1][j].to_s+"\n"
          new_tri[i][j] = new_tri[i][j] + new_tri[i-1][j] 
          puts new_tri[i][j]
        else
          #print "new_tri[i][j] = "+new_tri[i][j].to_s+", new_tri[i-1][j-1] = "+new_tri[i-1][j-1].to_s+"\n"
          new_tri[i][j] = new_tri[i][j]+new_tri[i-1][j+1]
          puts new_tri[i][j]
        end
      end
      j += 1
    end
    i += 1
  end
  
  puts new_tri[length-1][0]
end

maxsum(triangle)

