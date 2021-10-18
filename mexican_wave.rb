# Problem
# in this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

# Rules
# 1.  The input string will always be lower case but maybe empty.
# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

# Expectations
# 1. wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# 2. wave("codewar") => ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]

# Edge Case
# 1. Empty Array
# 2. multiple words 
#    wave("two words") => ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]

# Algorithm
1. count how many letters are give in a string including a space
2. duplicate a given string as many times as the number of letters in the string.
3. 


def wave(str)
  word = str.chars
  string_count=str.length
  i = 0
  mexican_wave = []
  until i == string_count
    word[i]=word[i].upcase
    mexican_wave << word.join
    word[i]=word[i].downcase
    i += 1
  end  
  mexican_wave
end