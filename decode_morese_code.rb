def decodeMorse(morseCode)
  morseCode.strip.split("  ").map { |code| code.split.map { |letter| MORSE_CODE[ letter ] }.join }.join(" ")
end

# kata link
# https://www.codewars.com/kata/54b724efac3d5402db00065e

# long form

# def decodeMorse(morseCode)
#  morse_words = morseCode.strip.split("  ")
#  english_words = morse_words.map { |morse_word|
#  morse_letters = morse_word.split
#  english_letters = morse_letters.map { |morse_letter| MORSE_CODE[morse_letter] }

#       english_letters.join
#     }

#     english_words.join(" ")
# end

# **************Gavin*********************
# def decodeMorse(morseCode)
#   morseCode.strip.split("  ").map { |word| word.split.map { |letter| MORSE_CODE[letter] }.join }.join(" ")
# end

# I would split on the word separator to get the words
# Then I would process each word by splitting on a single space to get the letters
# Translate each of those
# join them (no spaces)
# then join the resulting words with a single space
# strip is used for some that has space at the front of the string. get rid of them first before splitting a string
# be careful of spacing. It' mostly two not one. It will make a difference
