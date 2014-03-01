class SalaryComponent < ActiveRecord::Base

  ################
  # Validations
  ################
  validates :name, presence: true

end
