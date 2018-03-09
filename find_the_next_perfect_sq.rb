def find_next_square(sq)
  sq % Math.sqrt(sq) == 0.0 ? (Math.sqrt(sq) + 1) * (Math.sqrt(sq) + 1).to_i : -1
end
