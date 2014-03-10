class WorkShift < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Constants
  ###############

  ###############
  # Accessors
  ###############

  ###############
  # Validations
  ###############
  validates :name, presence: true, uniqueness: true, allow_blank: false

  validates_with MinMaxValidator,
    fields: { min: :from, max: :to, msg: "Can't be before \"From\"" }

  ###############
  # Associations
  ###############
  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def duration
    to.difference_in_hours from
  end

  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

end
