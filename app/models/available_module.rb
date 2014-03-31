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
    changes[:name] && (UNEDITABLE_MODULES.map(&:downcase).include? changes[:name].first.to_s.downcase)
  end

  def ensure_editable
    editable?
  end

end
