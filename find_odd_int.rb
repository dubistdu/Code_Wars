def find_it(seq)
  seq.select {|num| seq.count(num).odd?}
end

# def find_it(seq)
#   seq.uniq.map{ |x| [x, seq.count(x)]}.to_h.select {|key,val| val%2 == 1 }.keys.join.to_i
# end

# def find_it(seq)
#   repeat = seq.uniq.map{ |x| [x, seq.count(x)]}.to_h
#   final = repeat.select {|key,val| val%2 == 1 }.keys.join.to_i
# end

##### kata link
# https://www.codewars.com/kata/54da5a58ea159efa38000836
