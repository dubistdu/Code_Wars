def count_chars(s)
  Hash[ s.chars.uniq.zip s.chars.uniq.map { |a| s.count(a) } ]
end

 # keys = s.chars.uniq
 # value = s.chars.uniq.map { |a| s.count(a) }
 # Hash[ keys.zip value ]
