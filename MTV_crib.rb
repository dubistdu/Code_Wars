def my_crib(num)
  top_roof = [ " " * num, "/\\", " " * num, "\n" ].join
  i = 1
  middle_roof = []
  until i == num do
    middle_roof << [" " * ( num - i ),"/", " " * ( 2 * i ),"\\"," " * ( num - i ),"\n" ].join
    i += 1
  end
  bottom_roof = ["/", "_" * ( 2 * num ),"\\\n"]
  post = ["|"," "  *  ( num * 2 ), "|","\n"].join * (num - 1)
  floor = ["|","_" * ( num * 2 ), "|"].join
  [top_roof, middle_roof,bottom_roof,post, floor].join
end
