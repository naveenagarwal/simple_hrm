class RelationObject

  # Self Methods
  class << self
    def scoped_relation_object(scope_name: nil, klass: nil)
      return klass if scope_is_all_or_nil? scope_name
      klass.public_send(scope_name)
    end

    private

    def scope_is_all_or_nil?(scope_name)
      scope_name.nil? || scope_name.to_s == "all"
    end
  end

end