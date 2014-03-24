class Education < ActiveRecord::Base

  ##############
  # Validations
  ##############
  validates :level, presence: true, uniqueness: true, allow_blank: false

end
