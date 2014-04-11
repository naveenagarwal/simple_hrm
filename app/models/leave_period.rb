class LeavePeriod < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Constants
  ###############

  ###############
  # Scopes
  ###############
  scope :current_leave_period, -> { where(active: true).first }

  ###############
  # Accessors
  ###############

  ###############
  # Validations
  ###############

  ###############
  # Associations
  ###############

  ###############
  # CallBacks
  ###############
  before_save :ensure_only_one_is_active

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def end_date
    "Calculate End Date"
  end

  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

  def ensure_only_one_is_active
    if active?
      self.class.update_all(:active, true)
      self.active = true
    end
  end

end
