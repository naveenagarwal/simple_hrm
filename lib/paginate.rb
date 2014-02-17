class Paginate

  class << self

    def get_records(relation_object: nil, page: 1, per_page: 10)
      relation_object.paginate(
        page: page,
        per_page: per_page
      )
    end

  end
end