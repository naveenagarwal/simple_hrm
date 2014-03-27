class AvailableModule < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Constants
  ###############
  UNEDITABLE_MODULES = [ "Admin", "PIM" ]

  ###############
  # Accessors
  ###############

  ###############
  # Validations
  ###############
  validates :name, presence: true, uniqueness: true, allow_blank: false

  ###############
  # Callbacks
  ###############
  before_save :ensure_editable

  ###############
  # Associations
  ###############

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def editable?
    !uneditable?
  end

  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

  def uneditable?
    UNEDITABLE_MODULES.map(&:downcase).include? name.to_s.downcase
  end

  def ensure_editable
    editable?
  end

end
