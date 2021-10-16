# https://www.codewars.com/kata/pyramid-array/train/ruby
# def pyramid(numbers)
#   Array.new(numbers, []).map.with_index{|x,i| Array.new(i+1,1)}
# end

Refactor

def pyramid(numbers)
  Array.new(numbers) { |i| [1] * (i + 1) }
end