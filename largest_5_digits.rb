def solution(digits)
  digits.to_s.chars.each_cons(5).map(&:join).max.to_i
end
