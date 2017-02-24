def tiy_fizz_buzz(string)
  special = (0..9).to_a + ('!'..'?').to_a
  arr= string.chars
  arr.map {|a| if special.include?(a)
      a
    elsif "AEIOU".include?(a)
      a = "Iron Yard"
    elsif "aeiou".include?(a)
      a = "Yard"
    elsif [" "].include?(a)
      a
    elsif a.upcase == a
      "Iron"
    else
      a
  end}.join("")
end
