def work_needed(project_minutes, freelances)
  my_work_minutes = project_minutes - freelances.map { |h,m| h * 60 + m }.sum
  my_work_minutes <= 0 ? "Easy Money!" : "I need to work #{ my_work_minutes / 60 } hour(s) and #{ my_work_minutes % 60 } minute(s)"
end