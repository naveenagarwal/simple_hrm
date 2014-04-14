class Paginate

  class << self

    def get_records(relation_object: nil, page: nil, per_page: nil)
      relation_object.paginate(
        page: page || DEFAULT_PAGE,
        per_page: per_page || DEFAULT_PER_PAGE
      )
    end

  end
end