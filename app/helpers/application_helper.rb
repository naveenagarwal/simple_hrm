module ApplicationHelper

  def collection_for(enum_collection)
    enum_collection.collect {|e| [ e.description, e.value ] }
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

  def time_only(time)
    time ||= Time.now
    time.strftime("%H:%M")
  end

  def options_for_all_countries
    Country.all.collect { |country|
        [country.first, country.first ]
      }.sort_by { |country|
        country.first
      }
  end

  def get_date_in_format(date, format)
    date.try(:strftime, format)
  end

  def required_span_with(text)
    "#{text} <span class='required'>*</span>".html_safe
  end

  def file_link(attachment)
    link_to file_name(attachment), attachment.url
  end

  def file_name(attachment)
    File.basename attachment.url if attachment.url
  end

  def collection_for_months(enum_collection)
    options_html = []

    enum_collection.each do |e|
      options_html << "<option value=#{ e.value } data-childrenoptions=\
        #{ (1..e.options[:number_of_days]).to_a.join(",") } >#{ e.description }\
        </option>"
    end

    options_html.join.html_safe
  end

end
