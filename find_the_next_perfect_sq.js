function findNextSquare(sq) {
  // Return the next square if sq if a perfect square, -1 otherwise
 var x = sq % Math.sqrt(sq) == 0.0 ? Math.ceil((Math.sqrt(sq) + 1)**2) : -1
 return x
}
