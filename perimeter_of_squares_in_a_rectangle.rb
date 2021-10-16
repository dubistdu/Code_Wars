def perimeter(n)
  num = [0,1]
  i = 0
  until i == n do
    num << num[i] + num [i+1]
    i += 1
  end
  num.sum * 4
end
