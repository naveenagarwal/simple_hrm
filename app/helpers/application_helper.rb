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

  def edit_icon(size = 16)
    "<span>
      <img src='/assets/edit-icon-#{size}.png' class='icon-list has-tooltip' title='Edit'>
    </span>".html_safe
  end

  def delete_icon(size = 16)
    "<span>
      <img src='/assets/delete-icon-#{size}.png' class='icon-list has-tooltip' title='Destroy'>
    </span>".html_safe
  end

end
