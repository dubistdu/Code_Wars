def fruit(reels, spins)
  point = { "Wild" => 10 ,"Star" => 9,"Bell" => 8,"Shell" => 7,"Seven" => 6,"Cherry" => 5,"Bar" => 4,"King" => 3,"Queen" => 2,"Jack" => 1 }

  reel1, reel2,reel3 = reels

  images = [reel1[spins[0]], reel2[spins[1]], reel3[spins[2]]]
  uniq_images = images.uniq

  return 0 if uniq_images.count == 3

  if uniq_images.count == 1
    point[uniq_images.first] * 10
  elsif images.count("Wild") == 1 && uniq_images.count == 2
    point[images.select { |r| images.count(r) == 2 }.first] * 2
  else
    point[images.select { |r| images.count(r) == 2 }.first]
  end
end
