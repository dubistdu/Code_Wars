
def longest_consec(strarr, k)
  if strarr.length == 0 || k>strarr.length || k<=0
  ""
  else
   strarr.each_cons(k).map {|group| group.join}.max_by {|string| string.length}
  end
end

# def longest_consec(strarr, k)
#   if strarr.length == 0 || k>strarr.length || k<=0
#   ""
#   else
#     a= strarr.each_cons(k).map {|group| group.join}
#     a.max_by {|string| string.length}
#   end
# end

#understanding kata - badly worded. It's asking when n number of
#consecutive strings are combined, which one becomes the longest string?

# if you want the longest string
# [”cat”, “mouse”, “frog”].max
# or
# [”cat”, “mouse”, “frog”].max_by { |x| x.length }
# same thing
########  link to the kata
# https://www.codewars.com/kata/56a5d994ac971f1ac500003e
