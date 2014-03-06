class PayGrade < ActiveRecord::Base

  ##############
  # Validations
  ##############
  validates :name, presence: true, uniqueness: true, allow_blank: false
  validates :min_salary, :max_salary, numericality: true, allow_blank: true

  validates_with MinMaxValidator,
    fields: { min: :min_salary, max: :max_salary, msg: "Invalid" }

end
