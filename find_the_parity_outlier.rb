# An Array contains at least 3 array items
# Array is comprised entirely of odd integers or even integers
# Array will always containe a single outlier
# Return the array's outliner

#####
#
# sepearate an array to odd and even numbers
# find an array that only contains one array item
# return the value of the array
def find_outlier(integers)
  integers.partition { |a| a.even? }.find { |a| a.count == 1 }.first
end
