class Skill < ActiveRecord::Base

  ##############
  # Validations
  ##############
  validates :name, presence: true, uniqueness: true, allow_blank: false

end


