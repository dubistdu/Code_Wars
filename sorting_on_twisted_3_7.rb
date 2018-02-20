
# https://www.codewars.com/users/mamafrantz/completed_solutions

# Expected input and output
# if an array item includes 3, replace with 7
# if an array item includes 7, replace with 3
# ex) 3=>7, 7=>3, 33=>77, 77=>33, 37=>73, 73=>37, 113=>117, 137=> 173, 737 => 373 ...
# There is no need for a precheck
# The array will always be not null and will always contain at least one number.

def sort_twisted37(arr)
# 1. convert each array item to string
# 2. replace '3' with '7' / '7' and '3'
  strings = arr.map {|a| a.to_s}.map {|a| a.gsub(/[37]/, '3' => '7', '7' => '3')}

# 3. convert each array item to integer
# 4. sort the array
  array = strings.map {|a| a.to_i}.sort
# 5. turn each array item to string
  to_string = array.map {|a| a.to_s}
# 6. replace '3' with '7' / '7' and '3'
# 7. convert each array item to integer
  strings = to_string.map {|a| a.gsub(/[37]/, '3' => '7', '7' => '3').to_i}
end
