class LdapConfiguration < ActiveRecord::Base
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
  validates :server, :port, :implementation, :protocol, :user_suffix,
            presence: true

  ###############
  # Callbacks
  ###############
  before_save :ensure_only_one_is_active

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

  def ensure_only_one_is_active
    if status?
      self.class.update_all(status: false)
      # self.status = status
    end
  end

end
