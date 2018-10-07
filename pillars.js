const pillars = (num_pill, dist, width) => {
  return num_pill > 1 ? dist * (num_pill - 1 ) * 100  + width * (num_pill-2) : 0;
}
