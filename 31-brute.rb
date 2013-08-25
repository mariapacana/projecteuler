 #!/usr/bin/ruby -w

target = 10
coins = [1,2,5,10]
total = 0
combos = []

def curses(target, total, coins, combos)
  if coins.empty?
    if target == total
      combos << 1
    end
  else
    coin = coins[0]
    (0..target/coin).each do |i|
      curses(target, total + coin *i, coins[1..-1], combos)
    end
  end
  combos.size
end

p curses(target, total, coins, combos)