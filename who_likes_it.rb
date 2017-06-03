def likes(names)
  names_num = names.length
  case
    when names == []
      'no one likes this'
     when names_num == 1
      names.join + ' likes this'
     when names_num == 2
      names[0...names_num].join(' and ') + ' like this'
     when names_num == 3
      names[0..1].join(', ') + ' and ' + names[names_num-1] + ' like this'
     when names_num >=4
      names[0..1].join(', ') + ' and ' + (names_num-2).to_s + ' others like this'
   end
end
