def sort_by_language(arr)
  arr.sort_by {|programmer| [programmer["language"] , programmer["first_name"]]}
end

# https://www.codewars.com/kata/583ea278c68d96a5fd000abd

# ref https://makandracards.com/makandra/20759-sort-a-ruby-array-with-multiple-criteria
#why did this not work?
# def sort_by_language(arr)
#   arr.sort_by {|programmer| [programmer["language"] <=> programmer["first_name"]]}
# end

# so make an array of both values you want to sort by
# The *first* element of the array will be considered unless they are equal, then the second
# To see how this works, try this in `irb`
# `["jasmin", "gavin"] <=> ["jasmin", "frank"]`
# The `<=>` returns `-1` if the value is less, `0` if they are the same, and `1` if the value is larger
# Then try
# `["jasmin", "gavin"] <=> ["jasmin", "zoe"]`
# You’ll see the first returns `1` and the second because `"gavin"` is greater than `"frank"` — the *SECOND* element of the array has to be compared since the first one was equal
# This is how array comparison works, Ruby goes through each element of the array looking for one that is bigger or smaller than it’s pair in the other array.
# It is the `spaceship` operator <=>
# It is what is used for sorting
# It is what `sort_by` is using to determine order
# By giving a value in `sort_by` block, you are telling Ruby what value to use in the comparison
# So if we give it an array of values
# we are saying: Sort by the first element, but if it is the same, consider the second. If the second is the same, consider the third. And so on
# Because that is how array ordering works
# So build an array of values in the `sort_by` block representing the order you want the sorting to work.
