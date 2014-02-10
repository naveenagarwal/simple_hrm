module ApplicationHelper

  def flash_message
    flash.map { |key, value| "<div class=#{key}>#{value}</div>" }.join
  end

end
