def find_missing_letter(arr)
  ((arr.first..arr.last).to_a - arr).first
end
