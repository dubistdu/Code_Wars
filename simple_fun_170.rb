loop do
  arr = arr.chunk(&:even?).map(&:last)
  if arr.map { |a| a.length == 1 }.include?(false) == false
    arr = arr.map(&:sum).chunk(&:even?).map(&:last)
  else
    return arr.length
  end
end

# 1. group consecutive even numbers together call this `even_numbers`
# 2. group consecutive odd numbers together call this `odd_numbers`
# 3. count the length of each element of `even_numbers` and call this `even_numbers_counts`
# 4. count the length of each element of `odd_numbers` and call this `odd_numbers_counts`
# ...
