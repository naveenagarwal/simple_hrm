# module DateTimeExtention

#   def difference_in_hours

#   end


# end

class Time

  def difference_in_hours(from)
    ((self -  from).to_f / (60 * 60).to_f).round 2
  end

end