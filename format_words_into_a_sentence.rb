def format_words(words)
  return "" if words.nil?
  words = words.compact.reject(&:empty?)
  return "" if words.count <= 1 && words.first.nil?
  return words.first if words.count == 1
  "#{words[0..words.count - 2].join(", ")} and #{words.last}"
end
