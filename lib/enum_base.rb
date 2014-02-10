module EnumBase
  attr_reader :description
  attr_reader :value
  attr_reader :ordinal

  def init(description, value, ordinal)
    @description, @value, @ordinal = description, value, ordinal
  end
end