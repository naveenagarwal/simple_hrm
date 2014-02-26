module ApplicationHelper

  def collection_for(enum_object)
    enum_object.collect {|r| [ r.description, r.value ] }
  end

  def get_text_with_tooltip(text)
    "<span class='has-tooltip' title='#{text}'>
      #{ h text.truncate(27) }
    </span>
    ".html_safe
  end
end
