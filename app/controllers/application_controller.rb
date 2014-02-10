class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user_type

  private

  def current_user_type
    AppEnumerables::Entites.each do |entity|
      desc = entity.description
      return desc if send :"current_#{desc}"
    end

    return "visitor"
  end

end
