def min_min_max(array)
  sorted = array.sort
  sorted_all=[*sorted.first..sorted.last]
  [sorted.first, (sorted_all-sorted).min, sorted.last]
end