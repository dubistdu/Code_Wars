# integer => string => split => integer
# multiply each digit with each other until the count of digit is one
# find out how many loops it had to go through until digit count becomes 1

def persistence(n)
  multiples = []
  until n.to_s.chars.count < 2 do
    n = n.to_s.chars.map(&:to_i).inject(:*)
    multiples << n
  end
  multiples.count
end
