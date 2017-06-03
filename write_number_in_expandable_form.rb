def expanded_form(num)
  (num.to_s.split(//).reverse.map.with_index {|arr,index| arr.to_i * (10**(index))} - [0]).reverse.join(' + ')
end
