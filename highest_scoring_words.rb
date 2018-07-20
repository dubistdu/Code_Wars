def high(x)
  alphabet_table = {}
  (('a'..'z').zip(1..26)).each { |x| alphabet_table[x[0]] = x[1] }
  max_index = x.split(' ').map { |a| a.chars.map { |n| alphabet_table[n] }.sum }
  x.split[max_index.find_index(max_index.max)]
end