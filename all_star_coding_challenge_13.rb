def translate(word)
  return word if word.length < 2
  /^[^aeiou\W]/i.match(word) ? word.chars.rotate(1).join + "ay" : word + "ay"
end
