require 'benchmark'

coins = [1,2,5,10,20]
target = 20
current_answer = []

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def sum_values(hash)
  sum = 0
  hash.each do |key,value|
    sum = sum + value
  end
  sum
end

def knapsack(coins, target, current_answer)
  memo = {}
  knap(coins, target, current_answer, memo)
  p memo
  p sum_values(memo)
end

# Store the sub-answers!
def knap(coins, target, current_answer, memo)
    if sum(current_answer) == target
      memo[current_answer] = 1
    elsif sum(current_answer) < target
      memo[current_answer] = 0
      valid_coins = coins.select {|coin| coin <= target - sum(current_answer)}
      valid_coins.each do |coin| 
        next_answer = (current_answer + [coin]).sort!
        if !(memo[next_answer])
          knap(coins, target, next_answer, memo)
        end
      end
    else
      memo[current_answer] = 0
    end
end

  # p "coins = #{ coins }, target = #{ target }, current_answer = " + 
  # "#{ current_answer }, diff = #{ sum(current_answer) - target } " 

    #     p "coins = #{ coins }, target = #{ target }, current_answer = " + 
  # "#{ current_answer }, diff = #{ sum(current_answer) - target } "

# p knapsack(coins, target, current_answer) 
p Benchmark.measure{knapsack(coins, target, current_answer) }