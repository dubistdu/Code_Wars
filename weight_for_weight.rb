# https://www.codewars.com/kata/weight-for-weight/train/ruby

# order of weight is organized by sum of all digits of each weight
# order of list is smallest sum first. If there are identical sums, the order is ordered by string.
# No negative numbers will be given but it is possible that the list is empty
#
# Take away
# Hash doesn't allow identical keys
# you can sort array and Hash by two values using (&:reverse)
def order_weight(weights)
  # split string into an array
  # Make a sub array with each string value
  # sort an anrray using sub array's both array items
  # make a new array using only the first array item.
  # combine them to a string
  weights.split(" ").map { |a| [a,a.split("").map { |a| a.to_i }.inject(:+)] }.sort_by(&:reverse).map { |a| a[0] }.join(" ")
end
