require 'benchmark'

coins = [1,2,5]
target = 5
answer = [0,0,0]
combos = []
current = []
memo = {}

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def knapsack(coins, target, current, combos)
  # puts "coins = #{ coins }, target = #{ target }, current = " + 
       # "#{ current }, diff = #{ sum(current) - target } " + 
       # "combos = #{combos}"
  if sum(current) == target && !(combos.include?(current))
    combos << current.sort!
  elsif sum(current) < target
    combos = coins.map {|coin| knapsack(coins, target, (current + [coin]).sort!, combos)}.reduce(:+).uniq
  end
  combos
end

p knapsack(coins, target, combos, current) 
