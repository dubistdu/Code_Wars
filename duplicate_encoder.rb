# https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby
def duplicate_encode(word)
  word.downcase.chars.map { |w| word.downcase.count(w) == 1 ?  w.replace("(") : w.replace(")")}.join
end