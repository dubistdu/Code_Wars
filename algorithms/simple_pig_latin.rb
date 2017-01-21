# Kata challenge description:
# Move the first letter of each word to the end of it, then add ‘ay’ to the end of the word.
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# The Following is a plan that I wrote down before I started jumping into coding. I also checked out all the sample tests the kata provided to see if there was any other information that I could gather.
# 1. split string into an array
# 2. split first character of each array element and make them into inner arrays. I Googled how to split first letter of each word from the rest of the letters. ‘string.split(//,2)’ turned out to be exactly what I wanted
# 3. reverse index of inner array and join them which will turn them into strings
# 4. join each string with a string “ay” to make them sound Latin like it’s suggest on the instruction
# 5. join inner array and return the final result
# Step 1–5 went fairly smooth. Examples passed but when I hit attempt, there were hidden test cases that I did not anticipate. The test failed when a string included either “?” or “!”.
# I knew I had to add special cases but syntax wise I was not quite sure where to add those in. One thought that came to my mind was, to take care of cases with“?” or “!”, at the beginning of the code find if it’s there, if so, take them out, then add them back in in the end. But then the challenge was how do I make the case to know which ones needed those characters back in. I am sure there is a way but at this point I’d rather fix what I have instead of trying to figure out a different way. So I asked our Gavin for a little help.
# The process:
# “Handle these two special cases [“?”, “”] [“!”, “”]
# If an array includes one of these, “?” or “!”, join string[1] + string[0] then + “ay” on each inner array ”
# 2. How can I implement this?
# Apparently I can add in if statements inside of a block! Something new and cool!
# 3. When array includes “?” or “!”, select the first array - since these characters will always be the first one of the array in this code according to the hidden test cases. Else, reverse each array and add “ay” at the end of the string.

def pig_it text  
  text_array = text.split.map {|word| word.split(//,2)}
  text_array = text_array.map { |array|array.include?("?") || array.include?("!")? array.first :  array.reverse.join + "ay" }.join(' ')
end

# Gavin's solution
# def pig_it text
#   text.split.map { |word| "!?".include?(word) ? word : "#{word[1..-1]}#{word[0]}ay" }.join(" ")
# end


# my long form
# def pig_it text
#   text_array = text.split.map {|word| word.split(//,2)}
#   text_array = text_array.map { |array|
#       if array.include?("?") || array.include?("!")
#       array.first
#     else
#       array.reverse.join + "ay"
#     end
#   }.join(' ')
# end
