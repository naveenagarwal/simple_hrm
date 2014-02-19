class Role < ActiveRecord::Base

  ###############
  # Validations
  ###############
  validates :name, presence: true, uniqueness: true, allow_blank: false

  ###############
  # Associations
  ###############
  has_many :users



end
