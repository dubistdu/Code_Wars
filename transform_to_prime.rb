require 'prime'
# refactor
def minimum_number(numbers)
  Prime.find { |prime| prime >= numbers.sum } - numbers.sum
end

# first pass
# def minimum_number(numbers)
#   next_prime = numbers.sum
#   until next_prime.prime?
#     next_prime += 1
#   end
#   next_prime - numbers.sum
# end
