
# https://www.codewars.com/kata/find-the-first-non-consecutive-number/train/ruby
def first_non_consecutive(arr)
  non_consecutives = arr.each_cons(2).detect { |a,b| b != a + 1 }
  non_consecutives ? non_consecutives.last : nil
end
