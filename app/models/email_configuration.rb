class EmailConfiguration < ActiveRecord::Base
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
  validate :address, :port, :domain, :username, :password, :authentication_type, presence: true, allow_blank: false

  ###############
  # Associations
  ###############

  ###############
  # Callbacks
  ###############
  before_save :set_enabled

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def settings
    {
      address:              address,
      port:                 port,
      domain:               domain,
      user_name:            username,
      password:             password,
      authentication_type:  authentication_type.to_s,
      enable_starttls_auto: enable_starttls_auto
    }
  end

  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

  def set_enabled
    if status? # Enabled the email configuration
      self.class.update_all(status: false)
      self.status = true
    end
  end
end
