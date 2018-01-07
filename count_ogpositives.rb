def count_positives_sum_negatives(numbers)

  a = numbers.select {|pos| pos > 0}.count
  b = numbers.select {|neg| neg < 0}
  b = b.inject(0, "+")

  [a,b]

end
