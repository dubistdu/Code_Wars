def check_exam(arr1,arr2)
  sum = arr1.zip(arr2).map {|a,b|
    if a == b
      4
    elsif b == ""
      0
    elsif a != b
      -1
    end
  }.inject :+

  sum < 0 ? 0 : sum
end

# https://www.codewars.com/kata/check-the-exam/train/ruby
# zip(*args) public
# Converts any arguments to arrays, then merges elements of self with corresponding elements from each argument.
# This generates a sequence of self.size n-element arrays, where n is one more that the count of arguments.
# If the size of any argument is less than enumObj.size, nil values are supplied. If a block is given, it is invoked for each output array, otherwise an array of arrays is returned.
