# 1
def house_numbers_sum(input_array)
  input_array.take_while { |a| a > 0 }.sum
end

# 2
# def house_numbers_sum(input_array)
#   zero_location = input_array.find_index(0)
#   input_array[0..zero_location].sum
# end
