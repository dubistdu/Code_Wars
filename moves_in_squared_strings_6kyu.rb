# https://www.codewars.com/kata/moves-in-squared-strings-iii/train/ruby
#  enumarate legnth of array
# They are the 0th character of each word
# They are the 1st character of each word
# They are the 2nd character of each word
# They are the 3rd character of each word
# .
# .
# .

# Step 1
# def diag_1_sym(string)
#  words= string.split("\n")
#  new_words = []
#  words.length.times do |index|
#    new_words << words.map {|word| word[index]}.join("")
#  end
#  new_words.join("\n")
# end

# words.length.times will return the value of times

def diag_1_sym(string)
 words= string.split("\n")
 words.length.times.map { |index| words.map { |word| word[index] }.join("") }.join("\n")
end
def rot_90_clock(string)
  words= string.split("\n")
  words.length.times.map { |index| words.map { |word| word[index] }.reverse.join("") }.join("\n")
end
def selfie_and_diag1(string)
  words = string.split("\n")
  new_words = [words, words.length.times.map { |index| words.map { |word| word[index] }.join("") }]
  words.length.times.map { |index| new_words.map { |new_word| new_word[index] }.join("|")}.join("\n")
end
def oper(fct, s)
    fct.call(s)
end
