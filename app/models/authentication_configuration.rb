class AuthenticationConfiguration < ActiveRecord::Base

  #############
  # Public API
  #############

  def enabled?
    status
  end

  def show_recaptcha?
    if enabled?
      enable_recaptcha?
    else
      false
    end
  end

  def attempts
    attempts_to_enable_recaptcha.to_i
  end

  def can_reset_password?
    if enabled?
      reset_password?
    else
      true
    end
  end

end
