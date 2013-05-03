def fibo(n,cache)
  if (!cache[n])
    if n == 1
      cache[n] = 1
    elsif n == 2
      cache[n] = 2
    else
      cache[n] = fibo(n-1,cache)+fibo(n-2,cache)
    end
  end
  cache[n]
end

cache = {}
puts fibo(3,cache)
puts fibo(4,cache)
puts fibo(5,cache)
puts fibo(50,cache)
puts fibo(100,cache)
