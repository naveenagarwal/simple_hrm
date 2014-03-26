class Configuration::EmailConfigurationsController < ApplicationController
  before_action :set_email_configuration, only: [:edit, :update, :destroy, :test_email]

  before_action :verify_xhr, only: [:test_email]

  def index
    @email_configurations = paginated_records_for EmailConfiguration
  end

  def new
    @email_configuration = EmailConfiguration.new
  end

  def edit
  end

  def create
    @email_configuration = EmailConfiguration.new(email_configuration_params)

    respond_to do |format|
      if @email_configuration.save
        format.html { redirect_to configuration_email_configurations_path(pagination_params), notice: t("model.create", kind: "Email Configuration") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @email_configuration.update(email_configuration_params)
        format.html { redirect_to configuration_email_configurations_path(pagination_params), notice: t("model.update", kind: "Email Configuration") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @email_configuration.destroy
    respond_to do |format|
      format.html { redirect_to configuration_email_configurations_path(pagination_params), notice: t("model.destroy", kind: "Email Configuration") }
    end
  end

  def test_email
    begin
      Notify.test_email_configuration(@email_configuration.settings, params[:email]).deliver
      set_flash_messages(type: "alert", message: "Email sent successfully")
    rescue Exception => e
      set_flash_messages(type: "error", message: "Failed to send the email - #{e.message}")
    end
  end

  private

  def set_email_configuration
    @email_configuration = EmailConfiguration.find(params[:id])
  end

  def email_configuration_params
    params.require(:email_configuration).permit(
      :address, :port, :status, :domain, :username, :password, :authentication_type,
      :enable_starttls_auto
    )
  end

end
