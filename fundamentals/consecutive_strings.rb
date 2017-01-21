# kata description

# Description:
# You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

# Example:
# longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
# n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

# Test.describe("longest_consec") do
#     Test.it("Basic tests") do
#         testing(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2), "abigailtheta")
#         testing(longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1), "oocccffuucccjjjkkkjyyyeehh")
#         testing(longest_consec([], 3), "")
#         testing(longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2), "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
#         testing(longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2), "wlwsasphmxxowiaxujylentrklctozmymu")
#         testing(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2), "")
#         testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3), "ixoyx3452zzzzzzzzzzzz")
#         testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15), "")
#         testing(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0), "")
#     end
# end

def longest_consec(strarr, k)
  if strarr.length == 0 || k>strarr.length || k<=0
  ""
  else
    strarr.each_cons(k).map {|group| group.join}.max_by {|string| string.length}
  end
end

# Gavin's solution ###############
# def longest_consec(strarr, k)
#    k < 1 ? "" : strarr.each_cons(k).map(&:join).max_by(&:length).to_s
# end



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
