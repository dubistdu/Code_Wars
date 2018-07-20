# reference PEDAC note

def find_unique(numbers)
  numbers.sort.each_slice(2).find { |a,b| a != b }.first
end