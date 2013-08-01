 #!/usr/bin/ruby -w

target = 5
coins = [1,2,5]

def curses(target, coins, total, combos)
  puts "total #{total} target #{target}, coins #{coins}"
  if coins.empty?
    combos += 1 if total == target
  else
    coin = coins[0]
    (0..target/coin).each do |i|
      curses(target, coins[1..-1], total + coin*i, combos)
    end
  end 
  combos
end

curses(target, coins, 0, 0)
p $combos