def iq_test(numbers)
  nums = numbers.split.map(&:to_i)
  nums.index(nums.partition(&:even?).select { |a| a.count == 1 }.flatten.first) + 1
end
