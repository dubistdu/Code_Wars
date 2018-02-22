def pig_it text
  text.split.map {|word| word.split(//,2)}.map { |array|array.include?("?") || array.include?("!")? array.first :  array.reverse.join + "ay" }.join(' ')
end
