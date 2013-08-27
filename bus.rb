#!/usr/bin/env ruby

# There is a city that has a bus route. The bus fare is kind of funny - depending how many stops you take, 
# that much money you have to pay. E.g., 1 stop costs 12 monies, 2 stops cost 21 monies, 3 stops cost 31 monies,
# etc., up to 10 stops.  You can't take more than 10 stops at a time, but you can get off a bus and get into 
# another bus at any time. You want to take a bus for N stops. Given a fare table and number of stops you want to 
# take, calculate the minimum fare that you have to pay.

# The input file contains two lines:
# 1) 10 integers with spaces between them - fare for going 1 stop, 2 stops, 3 stops, ..., 10 stops
# 2) 1 integer - number of stops that you want to go

# The output file should contain one number: minimum cost

# Example input:
# 12 21 31 40 49 58 69 79 90 101
# 15

# Example output for this case:
# 147

fares1 = {1 => 5,
          2 => 8, 
          3 => 14} 
stops1 = 4

fares2 = {1 => 12, 
          2 => 21, 
          3 => 31, 
          4 => 40, 
          5 => 49, 
          6 => 58, 
          6 => 69, 
          7 => 79, 
          8 => 90, 
          10 => 101}
stops2 = 15

def min_cost(fares, num_stops)
  if fares.length == 1 && fares[num_stops]
    min_cost = fares[num_stops]
  else
    costs = fares.map.each do |stops, cost| 
      new_fares = fares.reject {|s, c| s == stops }
      cost + min_cost(new_fares, num_stops - stops)
    end
    min_cost = costs.min
  end
  min_cost
end

min_cost(fares1, stops1)