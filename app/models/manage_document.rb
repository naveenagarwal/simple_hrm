class ManageDocument < ActiveRecord::Base
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
  belongs_to :document_category

  has_many :documents, as: :attachment_for, dependent: :destroy
  has_many :publishes, as: :publisher, dependent: :destroy

  ####################
  # Nested Attributes
  ####################
  accepts_nested_attributes_for :publishes,
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
