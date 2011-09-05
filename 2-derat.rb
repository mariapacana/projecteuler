#!/usr/bin/env ruby
fb = []
sum = 0
(0...4_000_000).each do |i|
  fb[i] = (i == 0) ? 1 : ((i == 1) ? 2 : fb[i-1] + fb[i-2])
  break if fb[i] > 4_000_000
  sum += fb[i] if fb[i].even?
end
puts sum
