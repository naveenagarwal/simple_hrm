class WorkWeek < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###################
  # serialized attr.
  ###################
  serialize :weekdays_info, Hash

  ###############
  # Constants
  ###############

  ###############
  # Accessors
  ###############

  ###############
  # Validations
  ###############
  validates :country, presence: true, uniqueness: { case_sensitive: false }

  ###############
  # Associations
  ###############

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
