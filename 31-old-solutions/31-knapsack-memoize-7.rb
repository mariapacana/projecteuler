require 'benchmark'

coins = [1,2,5]
target = 5
current_answer = []
memo = {}

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def pretty_print(coins, target, current)
  puts "coins = #{ coins }, target = #{ target }, current = " + 
  "#{ current }, diff = #{ sum(current) - target }"
end

def knapsack(coins, target, current_answer, memo)
  pretty_print(coins, target, current_answer)
  combos = 0

  if sum(current_answer) == target
    combos += 1
    memo[current_answer] = combos

  elsif sum(current_answer) < target
    valid_coins = coins.select {|coin| coin <= target - sum(current_answer)}
    valid_coins.each do |coin|
      next_answer = (current_answer + [coin]).sort!
      if !(memo[next_answer])
        sub_target = target - coin
        combos += knapsack(coins, sub_target, current_answer, memo)
        memo[next_answer] = combos
      end
    end
  end
  combos
end

p knapsack(coins, target, current_answer,memo) 
# p Benchmark.measure{knapsack(coins, target, current_answer) }