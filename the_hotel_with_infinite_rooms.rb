def group_size(s, d)
  until d <= s
    d -= s
    s += 1
  end
  s
end
