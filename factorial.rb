def add_all(n) 
  (1..n).to_a.inject(:*).to_s
add_all(5)