require 'benchmark'

coins = [1,2,5]
target = 5
current_answer = []

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def pretty_print(coins, target)
  puts "coins = #{ coins }, target = #{ target }"
end

def next_answer(coin)
  (current_answer + [coin]).sort!
end

def knapsack(coins, target)
  pretty_print(coins, target)
  combos = 0
  if coins.size == 0 && target == 0
    combos = 1
  else
    coins.each do |coin|
      p "coin = #{coin}"
      sub_target = sub_target = target - coin
      sub_coins = coins.select {|coin| coin <= sub_target}
      combos += knapsack(sub_coins, sub_target)
    end
  end
  p combos
end


p knapsack(coins, target) 
# p knapsack([],0)
# p knapsack([1],1)
# p Benchmark.measure{knapsack(coins, target, current_answer) }