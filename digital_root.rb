def digital_root(n)
  # n to string then split n then convert to integer
  # sum array
  # if the (sum's string length) > 1 loop above until sum is 1
  n = n.to_s.chars.map(&:to_i).inject(:+) while n.to_s.length > 1
  n
end
