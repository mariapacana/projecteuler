#!/usr/bin/env ruby

target = 200
max_coin = 200
coins = [200,100,50,20,10,5,2,1]
memo = {}

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def pretty_print(target, coins, max_coin, memo)
  p "target = #{target}, coins = #{coins.inspect}, max_coin = #{max_coin}, memo = #{memo.inspect}"
end

def count(target, coins, max_coin, memo)
  pretty_print(target, coins, max_coin, memo)

  num_ways = 0
  if target < 1
    num_ways = 1
  elsif target == 1 && max_coin == 1
    num_ways = 1
  else
    coins.each do |coin|
      new_target = target - coin
      new_coins = coins.select {|c| c <= coin && c <= new_target }
      new_max_coin = new_coins.max
      num_ways += count(new_target, new_coins, new_max_coin, memo)
    end
  end

  memo[[target, max_coin]] = num_ways
  num_ways
end

p count(target, coins, max_coin, memo)