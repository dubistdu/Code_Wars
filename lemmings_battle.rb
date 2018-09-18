def lemming_battle(battlefield, green, blue)
  until green.empty? || blue.empty?
    fighters = [battlefield, green.length, blue.length].min
    battle = green.sort.last(fighters).zip(blue.sort.last(fighters)).map { |g,b| g - b }
    green.sort!.pop(fighters)
    blue.sort!.pop(fighters)
    battle.delete(0)
    battle.each { |a| a > 0 ? green << a : blue << a.abs }
  end
  if green.empty? && blue.empty?
    "Green and Blue died"
  elsif green.empty?
    "Blue wins: #{blue.sort.reverse.join(" ")}"
  else
    "Green wins: #{green.sort.reverse.join(" ")}"
  end
end
