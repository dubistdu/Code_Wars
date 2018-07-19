# reference PEDAC note

def find_unique(numbers)
  array_found = numbers.sort.each_slice(2).to_a.find { |a| a[0] != a[1] }
  array_found[0]
end