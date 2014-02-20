class UserManagement::AuthenticationConfigurationsController < ApplicationController

  def edit
    @authentication_configuration = AuthenticationConfiguration.first
  end

  def update
    @authentication_configuration = AuthenticationConfiguration.find(params[:id])
    if @authentication_configuration.update_attributes(authentication_configuration_params)
      # redirect_to
      #   edit_user_management_authentication_configuration_path, notice: t("model.create", kind: "")
      redirect_to edit_user_management_authentication_configuration_path, notice: t("model.create", kind: "Authentication Configuration")
    else
      render :action => 'edit'
    end
  end

  private

  def authentication_configuration_params
    params.require(:authentication_configuration).permit(
      :status, :reset_password, :enable_recaptcha,
      :attempts_to_enable_recaptcha
    )
  end
end
