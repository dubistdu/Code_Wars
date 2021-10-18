def kangaroo(kanga1, rate1, kanga2, rate2)
# Setup
# there are two kangaroos
# They both have different rate.
# Each one will start therir jump at a different starting point
# If there is a point where two kangaroos will be landing at the same time ,return true. 
# Otherwise return false.

# Rules
# Each kangaroo's jump rate will be consistent. It won't change
# two kangarros may land on the same spot simultaneously
# 
# Expected out come
# Boolean

# Mental model (is it more of general description but not as detailed as algorithm?)


# Algorithm 

# if one has a higher number of starting point and highter jump rate, neither will ever meet with each other which results in false
# each jump is increment of one
# as each jump progresses, starting point will be added to each kangaroo's number of jumpts * jump rate 
# when both kangaroos' number of jumps * jump rate + starting point have the same value, the result will return true
# Kangaroo1_location = jumps * jump rate + starting point
# Kangaroo2_location = jumps * jump rate + starting point
# unless both kangaroos met at the starting point, kangaroos will keep jump until they meet each other
# if a kangaroo that started with the lower number of location passes the other one with higher number of location without 
# having an instance of langing on the spot when both kangaroos have same nunber of jumps, the result will return false. 
# ex) k1 > k2 => k2 < k1  and k1 == k2 did not happened, exit loop 

# Sample data
#   (0,3,4,2), true)
#   (0,9,16,4), false)
#   (0,2,5,3), false)
#   (1571,4240,9023,4234), true)
#   (-1571,4240,9023,4234), false)
#   (-7855,4240,9023,4234), true)
#   (43,5,49,3), true)
#   (9023,4240,1571,4234), false)
#   (129,15,147,9), true)
#   (129,15,147,90), false)
#   (0,2,100000,1), true)
#   (72893, 11125, 24432, 4202), false)
#   (13613, 299, 65130, 73), false)  


  return false if kanga1 > kanga2 && rate1 > rate2 || kanga1 < kanga2 && rate1 < rate2
  n = 1
  k1 = kanga1 + rate1*n 
  k2 = kanga2 + rate2*n  
  loop do 
    k1 = kanga1 + rate1*n 
    k2 = kanga2 + rate2*n 
    n += 1
    break if k1 == k2 ||
  end  



  
end