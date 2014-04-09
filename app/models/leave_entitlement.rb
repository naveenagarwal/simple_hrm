class LeaveEntitlement < ActiveRecord::Base
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
  validates :user, :leave_type, :location, :from, :to, presence: true

  validates_with MinMaxValidator,
    fields: { min: :from, max: :to, msg: "can't be before \"From\"" }

  ###############
  # Associations
  ###############
  belongs_to :user
  belongs_to :leave_type
  belongs_to :location

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
