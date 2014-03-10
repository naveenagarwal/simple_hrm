class Paginate

  class << self

    def get_records(relation_object: nil, page: DEFAULT_PAGE, per_page: DEFAULT_PER_PAGE)
      relation_object.paginate(
        page: page,
        per_page: per_page
      )
    end

  end
end