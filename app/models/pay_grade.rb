class PayGrade < ActiveRecord::Base

  ##############
  # Validations
  ##############
  validates :name, presence: true, uniqueness: true, allow_blank: false

  validates_with MinMaxValidator,
    fields: { min: :min_salary, max: :max_salary, msg: "Invalid maximum salary" }

end
