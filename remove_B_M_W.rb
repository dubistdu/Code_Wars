def remove_bmw(str)
  unless str.is_a?(String)
    raise ArgumentError.new("This program only works for text.")
  end
  (str.chars - ["b","m","w", "B","M","W"]).join
end
