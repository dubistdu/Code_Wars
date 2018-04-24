def s(n)
  n.digits.reverse.map{|d|d*d}.join.to_i
end
