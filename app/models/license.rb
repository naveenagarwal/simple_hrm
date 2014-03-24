class License < ActiveRecord::Base

  ##############
  # Validations
  ##############
  validates :name, presence: true, uniqueness: true, allow_blank: false

end
