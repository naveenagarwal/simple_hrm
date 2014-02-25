module ApplicationHelper

  def collection_for(enum_object)
    enum_object.collect {|r| [ r.description, r.value ] }
  end
end
