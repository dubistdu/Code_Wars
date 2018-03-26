require 'prime'
def divisors(n)
  n.prime? ? "#{n} is prime" : (2..n / 2).select { |i| n % i == 0 }
end
