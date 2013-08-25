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

def knapsack(coins, target, current, combos, memo)
  # puts "coins = #{ coins }, target = #{ target }, current = " + 
  # "#{ current }, diff = #{ sum(current) - target } " + 
  # "combos = #{combos}"
  puts "..."

  if sum(current) == target && !(combos.include?(current))
    combos << current.sort!
  elsif sum(current) < target
    combos = coins.map do |coin| 
      nexty = (current + [coin]).sort!
      memo[nexty] ? memo[nexty] : knapsack(coins, target, nexty, combos, memo)
    end.reduce(:+).uniq
  end

  memo[current] = combos
  combos
end

p "Knapsack is going..."
p Benchmark.measure { knapsack(coins, target, combos, current, memo) }