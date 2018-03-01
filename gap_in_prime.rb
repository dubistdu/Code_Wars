require 'prime'

def gap(g, m, n)
  # find prime numbers between (m...n) and collect them in an array
  # find a pair of consecutive prime numbers that has a gap of g and return array[s] of the pair(s)
  (m..n).lazy.select (:&.prime?).each_cons(2).find { |a,b| (b - a) == g }
end
