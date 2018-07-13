def killcount(counselors, jason)
  counselors.select { |a| a.last < jason }.map(&:first )
end