  # R,U positive value
  # L,D negative value
  # R total - L total == xpos
  # U total - D total == ypos
  # new pos = [initx - xpos , inity - ypos]
  # return root of ((init x - new x)**2 + (init y - new y)**2))

  def finaldist_crazyrobot(moves, init_pos)
    x = [init_pos.first]
    y = [init_pos[1]]
    moves.map { |a|
      if a.first == 'R'
        x << a.last
      elsif a.first == 'L'
        x << a.last * -1
      elsif a.first == 'U'
        y << a.last
      else
        y << a.last * -1
      end
      }

    Math.sqrt((init_pos.first - x.sum)**2 + (init_pos[1] -  y.sum)**2)
  end
