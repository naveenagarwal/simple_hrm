class Users::SessionsController < Devise::SessionsController

  before_filter :increment_login_attempts, only: [:create]

  def create
    if show_recaptcha?
      if verify_recaptcha
        super
      else
        set_resource_and_sign_out
        render :new
      end
    else
      super
    end
  end

  private

  def set_resource_and_sign_out
    self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    flash[:error] = t("devise.recaptcha_failed")
  end

  def increment_login_attempts
    cookies[:attempts] ||= 0
    cookies[:attempts] = cookies[:attempts].to_i + 1
  end

end