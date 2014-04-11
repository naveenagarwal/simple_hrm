module EnumBase

  attr_reader :description
  attr_reader :value
  attr_reader :ordinal
  attr_reader :options

  def init(description, value, ordinal, options={})
    @description, @value, @ordinal, @options = description, value, ordinal, options
  end

end