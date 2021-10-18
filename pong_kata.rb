# What is a pong game? It's like pingpong for arcade

# Task:
# You must finish the Pong class. 
# It has a constructor which accepts 
# 1.the maximum score a player can get throughout the game, and 
# 2. a method called play. 
# This method determines whether the current player hit the ball or not, i.e. if the paddle is at the sufficient height to hit it back. 

# There're 4 possible outcomes: 
# 1. player successfully hits the ball back,
# 2. player misses the ball, 
# 3. player misses the ball and his opponent reaches the maximum score winning the game,
# 4. either player tries to hit a ball despite the game being over. You can see the input and output description in detail below.

# "Play" method input:
# ball position - The Y coordinate of the ball
# player position - The Y coordinate of the centre(!) of the current player's paddle

# "Play" method output:
# One of the following strings:

# "Player X has hit the ball!" - If the ball "hits" the paddle
# "Player X has missed the ball!" - If the ball is above/below the paddle
# "Player X has won the game!" - If one of the players has reached the maximum score
# "Game Over!" - If the game has ended but either player still hits the ball
# Important notes:
# Players take turns hitting the ball, always starting the game with the Player 1.
# The paddles are 7 pixels in height.
# The ball is 1 pixel in height.

# Test case
# game.play(50, 53)  -> "Player 1 has hit the ball!";     // Player 1 hits the ball
# game.play(100, 97) -> "Player 2 has hit the ball!";     // Player 2 hits it back
# game.play(0, 4)    -> "Player 1 has missed the ball!";  // Player 1 misses so Player 2 gains a point
# game.play(25, 25)  -> "Player 2 has hit the ball!";     // Player 2 hits the ball
# game.play(75, 25)  -> "Player 2 has won the game!";     // Player 1 misses again. Having 2 points Player 2 wins, so we return the corresponding string
# game.play(50, 50)  -> "Game Over!";                     // Another turn is made even though the game is already over

class Pong
  attr_reader :max_score

  def initialize(max_score)
    @max_score = max_score
  end
  
  def play(ball_pos, player_pos)
    return ""
  end
end