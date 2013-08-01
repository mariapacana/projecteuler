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

def pretty_print(coins, target, current, combos, memo)
  puts "coins = #{ coins }, target = #{ target }, current = " + 
  "#{ current }, diff = #{ sum(current) - target } " + 
  "combos = #{combos}"
end

def knapsack(coins, target, current, combos, memo)
  
  pretty_print(coins, target, current, combos, memo)

  if target <= 0
    combos = []
  elsif sum(current) == target
    combos << current
  elsif sum(current) < target
    
  end

  memo[current] = combos
  combos
end

p "Knapsack is going..."
p knapsack(coins, target, combos, current, memo) 

