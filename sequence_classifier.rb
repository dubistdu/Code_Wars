
#https://www.codewars.com/kata/sequence-classifier/train/ruby
def sequence_classifier(arr)
  sorted = arr.sort
  sorted_reverse = sorted.reverse
  sorted_unique = sorted.uniq
    if sorted == sorted_reverse
      5
    elsif sorted_unique == arr
      1
    elsif sorted == arr && sorted_unique.count > 1
      2
    elsif sorted_reverse .uniq == arr
      3
    elsif sorted_reverse == arr
      4
    else
      0
  end

end

#sorting too many times will take too long. if sort gets used several times, save it as a variable. DO NOT REPEAT YOURSELF! -> DRY
