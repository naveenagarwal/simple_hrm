class JobTitle < ActiveRecord::Base

  ##############
  # Validations
  ##############
  validates :name, presence: true

end
