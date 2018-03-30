def create_phone_number_v1(numbers)
  "(#{numbers[0..2].join}) #{ numbers[3..5].join}-#{numbers[6..9].join}"
end

def create_phone_number_v2(numbers)
  numbers.insert(0,"(").insert(4,") ").insert(8,"-").join
end
