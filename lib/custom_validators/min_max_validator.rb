class MinMaxValidator < ActiveModel::Validator

  def validate(record)
    min = record.send options[:fields][:min]
    max = record.send options[:fields][:max]

    unless valid_max_value?(min: min, max: max)
      record.errors.add(options[:fields][:max], options[:fields][:msg])
    end
  end

  private

  def valid_max_value?(min: 0, max: nil)
    if max.present?
      return max >= min
    else
      return true
    end
  end

end