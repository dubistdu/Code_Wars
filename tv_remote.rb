def tv_remote(word)
  alphabet = { "a" => [0, 0], "b" => [0, 1], "c" => [0, 2], "d" => [0, 3], "e" => [0, 4],
               "f" => [1, 0], "g" => [1, 1], "h" => [1, 2], "i" => [1, 3], "j" => [1, 4],
               "k" => [2, 0], "l" => [2, 1], "m" => [2, 2], "n" => [2, 3], "o" => [2, 4],
               "p" => [3, 0], "q" => [3, 1], "r" => [3, 2], "s" => [3, 3], "t" => [3, 4],
               "u" => [4, 0], "v" => [4, 1], "w" => [4, 2], "x" => [4, 3], "y" => [4, 4], "z" => [4, 4] }
  words = word.chars
  sum_of_each_letter = [word.length, alphabet[words.first].sum ]
  words.map.with_index do |char, i|
    break if i == words.size - 1
    sum_of_each_letter << ((alphabet[char].first - alphabet[words[i + 1]].first).abs + (alphabet[char].last - alphabet[words[i + 1]].last).abs)
  end
  sum_of_each_letter.sum
end