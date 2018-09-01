def generateHashtag(str)
  return false if str.strip.empty?
  str.delete(" ").size < 140 ? "#" + str.split.map(&:capitalize).join : false
end
