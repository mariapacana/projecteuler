 #!/usr/bin/ruby -w

target = 2
coins = [1,2]

curses = Proc.new do |target, coins, total, combos|
  puts "target #{target}, coins #{coins}"
  if coins.empty?
    return "combos += 1" if total == target
    p "combos = #{combos}"
  else
    coin = coins[0]
    (0..target/coin).each do |i|
      curse_wrapper(target, coins[1..-1], total + coin*i,curses)
    end
  end 
end

def curse_wrapper(target,coins,curses)
  combos = 0
  total = 0
  curses.call(target,coins,total,combos)
  p combos
end


curse_wrapper(target,coins,curses)
