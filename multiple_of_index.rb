def multiple_of_index (arr)
  arr.select.with_index {|a,i| i > 0 && a % i == 0}
end

# select(merely selects array element that meets the condition) vs map (changes array and return new one)
# https://www.codewars.com/kata/multiple-of-index/train/ruby
