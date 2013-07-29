coins = [1,2,5,10,20,50,100,200]
target = 200
combos = []
current = []

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def knapsack(coins, target, current, combos)
  puts "coins = #{ coins }, target = #{ target }, current = " + 
       "#{ current }, diff = #{ sum(current) - target } " + 
       "combos = #{combos}"
  if sum(current) == target && !(combos.include?(current))
    combos << current.sort!
  elsif sum(current) < target
    combos = coins.map {|coin| knapsack(coins, target, current + [coin], combos)}.reduce(:+).uniq
  end
  combos
end

p knapsack(coins, target, combos, current)