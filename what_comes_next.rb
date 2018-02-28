
# two inouts: string & `a'letter
# find the letter in a string and return what comes after.
# do not return number or punctuations



# split a string
# split each string to a sub array of characters
# if sub array's array item.downcase == letter.downcase, return the next array item, else nil
# join strings
# strip all the numbers and special characters

##### each_with_index vs map_with_index

#### each_cons(p1) ##### Enumerable
# Iterates the given block for each array of consecutive <n> elements. If no block is given, returns an enumerator.)
# examples of each_cons
# http://www.rubyguides.com/2016/03/enumerable-methods/

def comes_after(str,letter)
  str.split.map {|a| a.chars}.map {|a| a.each_cons(2).map {|a,b| a.downcase == letter.downcase ? b : nil}.join}.join.gsub(/[^A-Za-z]/,'')
end
