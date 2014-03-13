class OrganizationGeneralInformation < ActiveRecord::Base

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

  ###############
  # Associations
  ###############
  has_one :address, as: :addressable

  ####################
  # Nested Attributes
  ####################
  accepts_nested_attributes_for :address,
    reject_if: :all_blank

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
