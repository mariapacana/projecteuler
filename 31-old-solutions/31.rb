 #!/usr/bin/ruby -w

target = 2
coins = [1,2]

def curses(target, coins, str)
  if coins.empty?
    print str + "\n"
  else
    coin = coins[0]
    (0..target/coin).each do |i|
      curses(target, coins[1..-1], str + i.to_s)
    end
  end 
end

curses(target, coins, "")
