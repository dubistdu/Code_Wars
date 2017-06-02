
def sequence_classifier(arr)
  adjacent_pairs = []
  arr.each_with_index do |number, index|
    adjacent_pairs << [number, arr[index + 1]] unless index == arr.size - 1
  end
  case
  when adjacent_pairs.all? { |pair| pair[0] == pair[1] }  then 5
  when adjacent_pairs.all? { |pair| pair[0] < pair[1] }   then 1
  when adjacent_pairs.all? { |pair| pair[0] <= pair[1] }  then 2
  when adjacent_pairs.all? { |pair| pair[0] > pair[1] }   then 3
  when adjacent_pairs.all? { |pair| pair[0] >= pair[1] }  then 4
  else                                                         0
  end
end


# instead of comparing them, I would have a set of rules to determine what classification it is
# so, I'd iterate through the array once and each time I get to the next item,
# I'd check if the input matches the expectations I have for classification
#
# for example
#
# if I loop through and the first item is 5, but the second item is 2, I know it's
# not "increasing", "not decreasing", or "constant"
# if the third item is 3, then it's "unordered"
# and I can return that etc
# you'd have to setup some state and then reference your current state each time you check a new item

# https://www.codewars.com/kata/sequence-classifier/train/ruby

# sorting too many times will take too long.
# if sort gets used several times, save it as a variable. DO NOT REPEAT YOURSELF! -> DRY
