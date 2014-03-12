def fib(n)
  return n if n <= 1
  puts n
  fib(n-1) + fib(n-2)
end

fib(10)
