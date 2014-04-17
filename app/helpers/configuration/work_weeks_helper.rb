module Configuration::WorkWeeksHelper

  def format_weekday_info(weekdays_info)
    weekdays_info.map do |k, v|
      "#{k}: #{description_for(AppEnumerables::WeekdaysInfo, v.to_i)}"
    end.join(", ")
  end
end
