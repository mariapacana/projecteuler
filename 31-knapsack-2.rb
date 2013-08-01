coins = [1,2,5]
target = 5
combos = []

def knapsack(coins, target, combos)
  answer = Array.new(coins.length) {0}
  if valid(coins, target, answer)
    combos << answer
  else
  
  end
  combos
end

def valid(coins, target, answer)
  if sumproduct(coins,answer) == target 
    true
  else
    false
  end
end

def sumproduct(coins, answer)
  sum = 0
  (0..coins.size-1).each do |i|
    sum += coins[i]*answer[i]
  end
  sum
end

p valid(coins,target,answer)