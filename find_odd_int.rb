def find_it(seq)
  seq.select {|num| seq.count(num).odd?}.first
end

##### kata link
# https://www.codewars.com/kata/54da5a58ea159efa38000836
