def sort_by_language(arr)
  arr.sort_by {|programmer| [programmer["language"] , programmer["first_name"]]}
end

# ref https://makandracards.com/makandra/20759-sort-a-ruby-array-with-multiple-criteria
#why did this not work?
# def sort_by_language(arr)
#   arr.sort_by {|programmer| [programmer["language"] <=> programmer["first_name"]]}
# end

# https://www.codewars.com/kata/583ea278c68d96a5fd000abd
