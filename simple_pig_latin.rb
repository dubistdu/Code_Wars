# https://www.codewars.com/kata/simple-pig-latin/train/ruby/586d3a4aaa042820d100002a
def pig_it text
  text_array = text.split.map {|word| word.split(//,2)}
  text_array.map { |array|array.include?("?") || array.include?("!") ? array.first : array.reverse.join + "ay" }.join(' ')
end
