
  # You will be given 2D array of directions and an array of directions
  # => Does maze remain consistent or does it change?
  # => The rule says it will change for the final tests
  # RULES
  # 1. The Maze array will always be square i.e. N x N but its size and content will differ from test to test.
  # 2. The start and finish positions will change for the final tests.
  # 3. The directions array will always be in upper case and will be in the format of N = North, E = East, W = West and S = South.
  # Follow the directions given
  # There are 3 possible outcomes
  # 1. If you reach the end point before all your moves have gone, => "Finish"
  # 2. Hit wall or go outside of maze border => "Dead"
  # 3. Find yourself still in the maze after using all the moves, => "Lost"
  # 0 = Safe
  # 1 = wall
  # 2 = Start point
  # 3 = Finish point
  # test case
  # maze = [[1,1,1,1,1,1,1],
  #         [1,0,0,0,0,0,3],
  #         [1,0,1,0,1,0,1],
  #         [0,0,1,0,0,0,1],
  #         [1,0,1,0,1,0,1],
  #         [1,0,0,0,0,0,1],
  #         [1,2,1,0,1,0,1]]

  # maze = [[1,1,1,1,1,1,1], [1,0,0,0,0,0,3], [1,0,1,0,1,0,1], [0,0,1,0,0,0,1], [1,0,1,0,1,0,1], [1,0,0,0,0,0,1],[1,2,1,0,1,0,1]]
  #  ["N","N","N","N","N","E","E","E","E","E"] == "Finish"
  #  ["N","E","E","E","E", "N"]
  #  ["N", "W", "W", "E", "N"] == "Dead"
  #  ["E","N","N","N","N","N","S"] == "Dead"
  #  ["N","E","E","E","E","N","N","N"] == "Lost"
  #  Are these two will always be the same?
  #  exit = [1,6]
  #  entrance = [6,2]
  #  "N" or "S" array is different row of array from the current postion. (Up and down in graph)
  #  "E" or "W" is within the same row of array from the current postion. (L or R in graph)

  # Find the location of 2, find the location of 3
  # North is the same index of the previous array
  # South is the same index of the next array
  # East is the next index within the same array
  # West is the previous index within the same array

  # Repeat the following 3 until firection is 3
  # as direction progresses if the next dierection hits 1 or go outside of array => "Dead"
  # as direction progresses if the next direction hits 3 => "Finiah"
  # if the last direction ends without hitting 1 but before hitting 3 => "Lost"

  # Question: If entrance is at the bottom, (the last array) and the starting direction points to South, is it considered outside of maze? It should be I think.

  # Start with maze values that's given
  # maze is 7 x 7
  # ["N","N","N","N","N","E","E","E","E","E"] == "Finish"
  # [6,1] == entrance
  # "N" => [5,1] == 0 safe
  # "N" => [4,1] == 0 safe
  # "N" => [3,1] == 0 safe
  # "N" => [2,1] == 0 safe
  # "N" => [1,1] == 0 safe
  # "E" => [1,2] == 0 safe
  # "E" => [1,3] == 0 safe
  # "E" => [1,4] == 0 safe
  # "E" => [1,5] == 0 safe
  # "E" => [1,6] == 3 Finish!

  # ["N", "W", "W", "E", "N"] == "Dead"
  # [6,1] == entrance
  # "N" => [5,1] == 0 safe
  # "W" => [5,0] == 1 Dead

  # ["N","E","E","E","E","N","N","N"] == "Lost"
  # [6,1] == entrance
  # "N" => [5,1] == 0 safe
  # "E" => [5,2] == 0 safe
  # "E" => [5,3] == 0 safe
  # "E" => [5,4] == 0 safe
  # "E" => [5,5] == 0 safe
  # "N" => [4,5] == 0 safe
  # "N" => [3,5] == 0 safe
  # No more directions and none of the value hit 3 yet == "Lost"

  # different entrance point and different size of array
  # maze = [[1,1,1,1],
  #         [0,0,0,3],
  #         [2,1,0,1],
  #         [0,0,0,1]]
  # ["N","E","E","E"] == "Finish"
  # "N" == 0 safe
  # "E" == 0 safe
  # "E" == 0 safe
  # "E" == 3 Finish!
  #
  # Algorithm
  # identify the location of entrance and exit
  # entrance = [['n'th of directions index which includes '2'],[index of where 2 is located from 'n'th of directions index]]
  # exit = [['n'th of directions index  which includes '3'],[index of where 3 is located from 'n'th of directions index]]
  # Loop the following until direction == 3
  # when direction == "N" maze[entrance y direction index - 1][entrance x direction index]
  # when direction == "S" maze[entrance y direction index + 1][entrance x direction index]
  # when direction == "W" maze[entrance_y_index][entrance x direction index - 1]
  # when direction == "E" maze[entrance_y_index][entrance x direction index + 1]
  # if direction == 1 or nil, return "Dead"
  # if none of the conditions satisfy, return "Lost"
def maze_runner(maze, directions)
  entrance_y_index = maze.find_index { |a| a.include?(2) }
  exit_y_index = maze.find_index { |a| a.include?(3) }
  entrance_x_index = maze[entrance_y_index].find_index(2)
  exit_y_index = maze[exit_y_index].find_index(3)
  return "Lost" if directions.length < (entrance_y_index - exit_y_index).abs + ( entrance_x_index - exit_x_index ).abs
  directions.each do |direction|
    case direction
    when "N" then maze[entrance_y_index - 1][entrance_x_index]
    when "S" then maze[entrance_y_index + 1][entrance_x_index]
    when "W" then maze[entrance_y_index][entrance_x_index - 1]
    when "E" then maze[entrance_y_index][entrance_x_index + 1]
    end
    return "Dead" if a == 1 || nil
    return "Finish" if a == 3
  end
  return "Lost"
end