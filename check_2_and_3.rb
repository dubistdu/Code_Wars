# solution 1
def check_three_and_two(arr)
  !arr.map { |a| arr.count(a) == 2 || arr.count(a) == 3 }.include?(false)
end

# Solution 2

def check_three_and_two(arr)
  arr.map { |a| arr.count(a) }.uniq.sort == [2,3]
end
