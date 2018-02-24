def song_decoder(song)
  song.gsub("WUB"," ").strip.split.join(" ")
end
