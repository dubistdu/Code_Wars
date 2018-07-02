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