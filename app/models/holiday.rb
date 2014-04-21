class Holiday < ActiveRecord::Base
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
  validates :name, :on, presence: true, uniqueness: true
  validates :country, presence: true

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
