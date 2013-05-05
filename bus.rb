fares1 = "12 21 31 40 49 58 69 79 90 101"
stops1 = 15

def summation(stops,max_stops)
  sum = []
  max_stops = max_stops
  
  if stops < max_stops + 1 
    (1..stops-1).each do |i|
      sum << [i,stops-i].sort
    end
  else
    (1..max_stops).each do |i|
      for j in summation(stops-i)
        sum << [i,j].flatten.sort
      end
    end
  end
 
  sum.sort
end

# def min_cost(fares,stops)
#   routes = summation(stops)
#   fares = fares.split(" ").map {|i| i.to_i}
#   cost = []
  
#   for r in routes
#     cost << r.zip(fares).map{|i,j| i*j }.inject(:+)
#   end
  
#   p cost
#   cost.min
# end

#puts min_cost(fares1,stops1)
puts summation(5,5).inspect
