def nbr_of_laps(x, y)
  # x mile: length of bob's lap
  # y mile length of Charles' lap
  #  finds the number of laps that each jogger has to complete before they meet each other again

  # find the first common multiplication number of each digit
  # compare x,y select smaller number of the two
  # multiply smaller number until it is dividable by the larger number and the remainder is 0

  short = [x,y].min
  long = [x,y].max

  i = 1
  until ((short * i) % long) == 0
    i += 1
  end
    [(i * short) / x , (i * short) / y]
end
