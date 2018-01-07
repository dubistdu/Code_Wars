# https://www.codewars.com/kata/moves-in-squared-strings-iii/train/ruby
# refactoring using transpose
# or use 'zip' method

def diag_1_sym(string)
  string.split("\n").map { |word| word.split("")}.transpose.map { |new| new.join("")}.join("\n")
end

def rot_90_clock(string)
  string.split("\n").map { |word| word.split("") }.transpose.map { |new| new.join("").reverse}.join("\n")
end

def selfie_and_diag1(string)
  words = string.split("\n")
  new_words = [words,words.map { |word| word.split("")}.transpose.map { |new| new.join("") } ]
  new_words.transpose.map { |new_word| new_word.join("|") }.join("\n")
end
def oper(fct, s)
  fct.call(s)
end

## refactor 
def diag_1_sym(string)
  string.split("\n").map { |word| word.split("")}.transpose.map { |new| new.join("")}.join("\n")
end

def rot_90_clock(string)
  string.split("\n").map { |word| word.split("") }.transpose.map { |new| new.join("").reverse}.join("\n")
end

def selfie_and_diag1(string)
  words = string.split("\n")
  new_words = [words,words.map { |word| word.split("")}.transpose.map { |new| new.join("") } ]
  new_words.transpose.map { |new_word| new_word.join("|") }.join("\n")
end
def oper(fct, s)
  fct.call(s)
end
