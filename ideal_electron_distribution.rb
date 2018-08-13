def atomic_number(electrons)
  n = 1
  collection_of_electrons = []
  until electrons - collection_of_electrons.sum <= 0
    collection_of_electrons << 2 * n**2
    n += 1
  end
  if electrons - collection_of_electrons.sum == 0
    collection_of_electrons
  else
    collection_of_electrons.pop
    collection_of_electrons << (electrons - collection_of_electrons.sum)
  end
end