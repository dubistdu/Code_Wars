## 1
def trouble(arr, t)
  i = 0
  while i < arr.length-1 do
    starting_arr_length = arr.length
    (arr[i] + arr[i+1]) == t ? arr.delete_at(i+1) : arr
    arr.length < starting_arr_length ? i : i += 1
  end
  arr
end

##2
def trouble(arr, t)
  loop do
    index = arr.each_cons(2).find_index { |a,b| a + b == t }
    break unless index

    arr.delete_at(index + 1)
  end

  arr
end
