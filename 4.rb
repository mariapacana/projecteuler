#!/usr/bin/env ruby

def is_palindrome(str)
  (0...str.size/2).each do |i|
    return false if str[i] != str[str.size - 1 - i]
  end
  return true
end

max_product = 0
factor1 = 0
factor2 = 0

999.downto(100).each do |i|
  999.downto(100).each do |j|
    product = i * j
    next if !is_palindrome(product.to_s)
    if product > max_product
      max_product = product 
      factor1 = i
      factor2 = j
    end
  end
end

puts "#{max_product} (#{factor1} * #{factor2})"
