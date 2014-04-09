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
  validates :user, :leave_type, :organization_location, :from, :to, presence: true

  validates_with MinMaxValidator,
    fields: { min: :from, max: :to, msg: "can't be before \"From\"" }

  ###############
  # Associations
  ###############
  belongs_to :user
  belongs_to :leave_type
  belongs_to :organization_location

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def leave_period_in_days
   (to - from + 1).to_i
  end

  def leave_period(format: "%m/%d/%Y")
    "#{from.strftime(format)} - #{to.strftime(format)}"
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
