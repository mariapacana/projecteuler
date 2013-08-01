 #!/usr/bin/ruby -w

target = 5
coins = [1,2,5]
$combos = 0

def curses(target, coins, total)
  puts "total #{total} target #{target}, coins #{coins}"
  if coins.empty?
    $combos += 1 if total == target
  else
    coin = coins[0]
    (0..target/coin).each do |i|
      curses(target, coins[1..-1], total + coin*i)
    end
  end 
  $combos
end

curses(target, coins, 0)
p $combos