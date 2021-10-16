
# PEDAC
# This argument is a string that contains multiple whitespace delimited numbers. 
# Each number has a single alphabet letter somewhere within it.
# Example : "24z6 1x23 y369 89a 900b"
# As shown above, this alphabet letter can appear anywhere within the number. You have to extract the letters and sort the numbers according to their corresponding letters.

# Example : "24z6 1x23 y369 89a 900b" will become 89 900 123 369 246 (ordered according to the alphabet letter)

# RULES
# now you have to do a series of computations on the numbers you have extracted.
# The sequence of computations are + - * /. 
# Basic math rules do NOT apply, you have to do each computation in exactly this order.
# This has to work for any size of numbers sent in (after division, go back to addition, etc).
# In the case of duplicate alphabet letters, you have to arrange them according to the number that appeared first in the input string.
# Remember to also round the final answer to the nearest integer.
# Examples :
# "24z6 1x23 y369 89a 900b" = 89 + 900 - 123 * 369 / 246 = 1299
# "24z6 1z23 y369 89z 900b" = 900 + 369 - 246 * 123 / 89 = 1414
# "10a 90x 14b 78u 45a 7b 34y" = 10 + 45 - 14 * 7 / 78 + 90 - 34 = 60

# EDGE case example
# In the case of duplicate alphabet letters, you have to arrange them according to the number that appeared first 
# in the input string.
# "111a 22a 34x 543c 3a 65r" = "111 22 3 543 65 34 "

# Algorithm
# 1. seprate string into words splitting where white space is at so each word contains numbers and one letter.
# 2. separate each word into characters ( one letter and numbers) and group the characters.
# 3. move each letter within a group to the front of the group
# 4. reorganize groups by alphabetical order of the letter within each group
# 5. combine all the numbers within each group in order of appearance within the group and turn it into a single value integer. 

# EDGE CASE 
# 6. if there are multiple groups containing the same letter, its order has to be the original order of the string.(need to figure out)

# 7. select number only from each group
# 8. Start with the first group
# 9. Look at the number in the current group
# 10. Add the following group's number to current group's number
# 11. Subtract the following group's number from the sum of previous two groups
# 12. Multiply the result from step 11 to the following group's number
# 13. Divide the result of step 12 by the next group's number
# 14. If there are more than 5 groups, repeat step 10 through 13 until threr are no more groups left 


# So lets focus on this one to see how to be more clear and maybe how to break it down if we feel like it needs
# `move each letter within a group to a front of the group`
# again you are referring to “a” group and “the” group
# But if I have my “be super detailed and only do what it says” hat on, this is unclear.
# So lets make it more clear

# `For each group, move each letter to the front`

# This is more clear
# But could be better

# the second part “move each letter to the front”
# - *how* do we do that.
# `For each group, find the single letter (a through z), then remove it from the group and place it at the front of the group`
# here i can use `the group` since I know that will be each `group` one at a time, since I set up `For each group` at the beginning

# And I give a more detailed description of *how* to _move_ it
# I haven’t detailed how to find it, how to remove it, or how to place it at the front.
# I would give more detail on those if I felt it necessary
# But at this point we can see almost a direct translation into code
# `For each group` will be some kind of `groups.each { |group| ..... }`
# `find the single letter` will be some kind of `group.find { |element| .... }
# `remove it` will be some kind of enumerable `delete`
# and `place it at the front` will be some kind of `unshift` or `prepend`, etc.
# So I might feel like this is enough detail on this step
# Do you see how this is just slightly more clear than `move`?
# `move` is a two step process so it might deserve to be broken down.
# `move each letter within a group to the front of the group` — “Do I know how to do that in a line of code of equal detail to how I wrote it”?
# Meaning is the code as simple (or more simple) than the instruction?
# If not, then it needs to be broken down a little
# So if you don’t _immediately_ and _clearly_ and _confidently_ see the line of code that goes with “move each letter within 
# a group to the front of the group” you need to be more clear, *or* more detailed


def do_math(s)
 # array of alphabets can be for upperCase too
  alphabet = [*'a'..'z', *'A'..'Z']
  words =  s.split(" ")
  numbers = words.map { |word| word.delete(word.chars.find { |letter| alphabet.include?(letter) }).to_i }
  letters = words.map { |word| word.chars.find { |letter| alphabet.include?(letter) } }
  sorted_num = letters.zip(numbers).sort.map {|a| a.last}
end

