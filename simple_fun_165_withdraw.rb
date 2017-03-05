def withdraw(n)
 if n%20 == 10
    [(n-50)/100, 1, (n-50-(n-50)/100*100)/20]
  elsif n%20 == 0
    [ n/100,0,(n-(n/100)*100)/20]
  end
end

##### katalink https://www.codewars.com/kata/58afce23b0e8046a960000eb
