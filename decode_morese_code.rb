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
