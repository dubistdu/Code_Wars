def inside_out s
  # if string is even, cut in half and rotate
  # if string is odd, leave the middle and roate left and right side of middle

  s.split.map { |word| 
    if word.size.even? 
      word.scan(/.{#{word.size/2}}/).map { |w| w.reverse }.join  
    else
      div_num = word.size/2  
      word_arr = word.chars
      word_arr.delete_at(div_num)
      word_arr.join.scan(/.{#{word.size/2}}/).map { |w| w.reverse }.insert(1,word.slice(div_num)).join
    end
  }.join(" ")     
end

# Refactor pointers
# 1) the `scan` pattern appears twice, once on line 7 and again on line 12. This often indicates that an abstraction/extraction could be used. 
# Maybe a helper method,or a lambda/proc could represent that idea instead of repeating it. This is something to consider/try
# 2) You make `word_arr` (and I would prefer `word_array` as a name, no need to save the two letters `ay`) by taking the characters from `word`, removing one 
#     and then immediately joining it back together. This might indicate that you should look at another way of dealing with the `div_num` positioned character
# 3) `div_num` is a bad variable name. What does this mean? If you say `div_num` on its own what do you think the variable represents? 
#     Here a better name might be `middle_index` or `index_to_not_rotate`, etc.
#     3-more) The name of the variable should contain the *most* context you can provide without having to look at the code that generated it. 
#     You don’t want names like `index_of_the_middle_of_the_word_that_we_arent_goingt_to_rotate` but we also don’t want `x` or `div_num`   
# 4) line 14 indentation was off (fixed it)
# 5) We try to use the `{ }` style for single line blocks that return a value. Here we have to choose since we would normally use `do end` 
#     but again that is typically used for cases where we don’t care about the return value (here we *do* care) — so this is a toss-up.    

# 6) `map { |w| w.reverse }` could be `map(&:reverse)`   
#     any time we have a block of the form `{ |variable| variable.method` we can change that to use “symbol to proc” to shorten it. 
#         Note that it sometimes comes with a minor performance penalty so if you are creating a library function that is going to be called a million times, 
#         consider not using it once you have profiled the code. In this case I *would* use the symbol-to-proc shorthand.
