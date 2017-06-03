def spinWords(string)
  string.split.map {|string|string.length >= 5 ? string.reverse : string}.join(' ')
end
