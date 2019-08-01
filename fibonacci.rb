def iterative_fib(n)
  (1..n).inject(:*)
end
def recursive_fib(n)
  return 1 if n <= 1
  n * recursive_fib(n-1)
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

