def fruit(reels, spins)
  point = { "Wild" => 10 ,"Star" => 9,"Bell" => 8,"Shell" => 7,"Seven" => 6,"Cherry" => 5,"Bar" => 4,"King" => 3,"Queen" => 2,"Jack" => 1 }
  reel1 = reels[0]
  reel2 = reels[1]
  reel3 = reels[2]
  spin_results = [reel1[spins[0]], reel2[spins[1]], reel3[spins[2]]]
  different_images = spin_results.uniq
  return 0 if different_images.count == 3
  if different_images.count == 1
    point[different_images.first] * 10
  elsif spin_results.count("Wild") == 1 && different_images.count == 2
    different_images.delete("Wild")
    point[ different_images.first ] * 2
  else
    point[spin_results.select { |r| spin_results.count(r) == 2 }.first]
  end
end
