# http://www.codewars.com/kata/simple-fun-number-326-the-shortest-time/train/ruby
def shortest_time(n,m,speeds)
  elevator = (n - m).abs * speeds[0] + speeds[1] * 2 + speeds[2] + (n - 1) * speeds[0]
  walk = (n - 1) * speeds[3]
  [elevator, walk].min
end
