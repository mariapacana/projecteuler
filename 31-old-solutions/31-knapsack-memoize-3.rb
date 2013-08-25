require 'benchmark'

coins = [1,2,5]
target = 5
combos = []
current_answer = []
memo = {}

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def knapsack(coins, target, current_answer, combos, memo)
  puts "coins = #{ coins }, target = #{ target }, current_answer = " + 
  "#{ current_answer }, diff = #{ sum(current_answer) - target } " + 
  "combos = #{combos}"
  
  return memo[current_answer] if memo[current_answer] 

  if sum(current_answer) == target && !(combos.include?(current_answer))
    combos << current_answer.sort!

  elsif sum(current_answer) < target

    p "valid coins = #{valid_coins = coins.select {|coin| coin <= target - sum(current_answer)}}"

    valid_coins.each do |coin| 
      p next_answer = (current_answer + [coin]).sort!
      p combos | knapsack(valid_coins, target, next_answer, combos, memo)
    end
  end

  memo[current_answer] = combos
  combos
end

p knapsack(coins, target, current_answer, combos, memo) 

# puts memo

#First of all, if the current answer is already in the memo, then just return it.

#if the sum of the current_answer coins is equivalent to the target and the combos don't include it, then put a sorted version of it into the combos.

# otherwise, if it's less than the target, keep adding in coins.