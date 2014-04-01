class Authentication::LdapConfigurationsController < ApplicationController
  before_action :set_ldap_configuration, only: [:edit, :update, :destroy]

  def index
    @ldap_configurations = paginated_records_for LdapConfiguration
  end

  def new
    @ldap_configuration = LdapConfiguration.new
  end

  def edit
  end

  def create
    @ldap_configuration = LdapConfiguration.new(ldap_configuration_params)

    respond_to do |format|
      if @ldap_configuration.save
        format.html { redirect_to authentication_ldap_configurations_path(pagination_params), notice: t("model.create", kind: "LDAP Configuration") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @ldap_configuration.update(ldap_configuration_params)
        format.html { redirect_to authentication_ldap_configurations_path(pagination_params), notice: t("model.update", kind: "LDAP Configuration") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @ldap_configuration.destroy
    respond_to do |format|
      format.html { redirect_to authentication_ldap_configurations_path(pagination_params), notice: t("model.destroy", kind: "LDAP Configuration") }
    end
  end

  private
    def set_ldap_configuration
      @ldap_configuration = LdapConfiguration.find(params[:id])
    end

    def ldap_configuration_params
      params.require(:ldap_configuration).permit(
        :server, :port, :implementation, :protocol, :user_suffix,
        :enable_authentication, :status
      )
    end
end
