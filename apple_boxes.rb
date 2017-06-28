# def apple_boxes(k)
# boxes=(1..k).to_a
# # y_boxes = boxes.select &:odd?
# r_boxes = boxes.select &:even?

# yellow = boxes.select (&:odd?).map.inject(0) {|sum, i|  sum + i**2}
# red = r_boxes.inject(0) {|sum, i|  sum + i**2}
# red-yellow

def apple_boxes(k)
  yellow = (1..k).select(&:odd?).map{|n| n**2}.inject(0, :+)
  red = (1..k).select(&:even?).map{|n| n**2}}.inject(0, :+)
  red - yellow
end


# http://www.codewars.com/kata/simple-fun-number-16-apple-boxes/train/ruby
