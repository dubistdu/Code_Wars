def solve(s)
  alphabet = ("a".."z").to_a
  s.tr('aeiou', "*").split("*").map { |a| a.chars.map { |i| alphabet.find_index(i) + 1 }.sum }.max
end
