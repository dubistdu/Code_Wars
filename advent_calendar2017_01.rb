# https://adventofcode.com/2017/day/1

# You're standing in a room with "digitization quarantine" written in LEDs along one wall. The only door is locked, but it includes a small interface. "Restricted Area - Strictly No Digitized Users Allowed."
#
# It goes on to explain that you may only leave by solving a captcha to prove you're not a human. Apparently, you only get one millisecond to solve the captcha: too fast for a normal human, but it feels like hours to you.
#
# The captcha requires you to review a sequence of digits (your puzzle input) and find the sum of all digits that match the next digit in the list. The list is circular, so the digit after the last digit is the first digit in the list.
#
# For example:
#
# 1122 produces a sum of 3 (1 + 2) because the first digit (1) matches the second digit and the third digit (2) matches the fourth digit.
# 1111 produces 4 because each digit (all 1) matches the next.
# 1234 produces 0 because no digit matches the next.
# 91212129 produces 9 because the only digit that matches the next one is the last digit, 9.
# What is the solution to your captcha?

# Approach

# Turn the list of digits into an array
num =  digits.to_s.chars.map {|n| n.to_i}
# Using each with index…
num.map.with_index {|n,i| num[i] == num[i+1] ? num[i] : 0}

# Before it turns last digit into “0”, (it will turn to 0 no matter what because it will try to match the index after the last index which is ‘nil’), save the last digit first to a separate variable then pop the last digit and compare it to first digit
# if they match, return the match number if it doesnt, back to ‘0’…
# Actually… need to compare first and last digit first in case 1 st doesn’t match the one next, it will turn 1st into ‘0’
