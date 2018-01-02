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
