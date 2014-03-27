class Subscriber < ActiveRecord::Base
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
  validates :name, :email, presence: true, allow_blank: false

  ###############
  # Associations
  ###############
  belongs_to :subscribable, polymorphic: true

  ###############
  # Class Methods
  ###############
  class << self
  end

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
