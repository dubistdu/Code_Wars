def equal_sides?(array, the_index)
  array[0..the_index - 1].inject(:+) == array[the_index + 1..array.count - 1].inject(:+)
end

def find_even_index(array)
  if array.inject(:+) - array.first == 0
    0
  elsif array.inject(:+) - array.last == 0
    array.count - 1
  else
    array.find_index.with_index { |item, index| equal_sides?(array, index) } || -1
  end
end
