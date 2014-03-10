class UserWorkShift < ActiveRecord::Base
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
  validates :user_id, presence: true, uniqueness: true, allow_blank: false
  validates :work_shift_id, presence: true, allow_blank: false

  ###############
  # Associations
  ###############
  belongs_to :user
  belongs_to :work_shift

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############

  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

end
