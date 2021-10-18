# https://www.codewars.com/kata/551dd1f424b7a4cdae0001f0/train/ruby

# Sheldon, Leonard, Penny, Rajesh and Howard are in the queue for a "Double Cola" drink vending machine; there are no other people in the queue. The first one in the queue (Sheldon) buys a can, drinks it and doubles! The resulting two Sheldons go to the end of the queue. Then the next in the queue (Leonard) buys a can, drinks it and gets to the end of the queue as two Leonards, and so on.

# For example, Penny drinks the third can of cola and the queue will look like this:

# Rajesh, Howard, Sheldon, Sheldon, Leonard, Leonard, Penny, Penny
# Write a program that will return the name of the person who will drink the n-th cola.

# names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
# Test.assert_equals(who_is_next(names, 1), "Sheldon")
# Test.assert_equals(who_is_next(names, 23),"Leonard")
# Test.assert_equals(who_is_next(names, 52), "Penny")
# Test.assert_equals(who_is_next(names, 7230702951), "Leonard")


def who_is_next(names, r)
  r -= 1
  while r >= names.size
    r -= names.size
    r /= 2
  end
  names[r]
end