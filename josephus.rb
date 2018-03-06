# killed = []
# loop the following two until items = []
# items = items.roate(k)
# killed << items.pop

# return killed

# def josephus(items,k)
#   killed = []
#   if items.length == 0
#     items
#   else
#     # loop the following two until items == []
#     loop do
#       items = items.rotate(k)
#       killed << items.pop
#       if items.length == 0
#         break
#       end
#     end
#     killed
#    end
# end

####  Refactor I
def josephus(items,k)
  killed = []
  # loop the following two until items == []
  until items.length == 0 do
    items = items.rotate(k)
    killed << items.pop
  end
  killed
end
