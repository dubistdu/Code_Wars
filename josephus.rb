def josephus(items,k)
  killed = []
  if items.length == 0
    items
  else
    # loop the following two until items == []
    loop do
      items = items.rotate(k)
      killed << items.pop
      if items.length == 0
        break
      end
    end
    killed
   end
end
