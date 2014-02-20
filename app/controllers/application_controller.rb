class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user_type, :pagination_params,
                :show_recaptcha?, :exceded_max_login_attempts?


  def after_sign_in_path_for(resource)
    root_url
  end

  private

  def current_user_type
    AppEnumerables::Entites.each do |entity|
      desc = entity.description
      return desc if send :"current_#{desc}"
    end

    return "visitor"
  end

  def pagination_params
    {
      scope: params[:scope],
      page: params[:page],
      per_page: params[:per_page]
    }
  end

  def show_recaptcha?
    if captacha_enabled? && exceded_max_login_attempts?
      true
    else
      false
    end
  end

  def exceded_max_login_attempts?
    if cookies[:attempts].to_i > max_login_attempts
      true
    else
      false
    end
  end

  def captacha_enabled?
    true
  end

  def max_login_attempts
    3
  end

end
