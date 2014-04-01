class Authentication::OpenidProvidersController < ApplicationController
  before_action :set_openid_provider, only: [:edit, :update, :destroy]

  def index
    @openid_providers = paginated_records_for OpenidProvider
  end

  def new
    @openid_provider = OpenidProvider.new
  end

  def edit
  end

  def create
    @openid_provider = OpenidProvider.new(openid_provider_params)

    respond_to do |format|
      if @openid_provider.save
        format.html { redirect_to authentication_openid_providers_path(pagination_params), notice: t("model.create", kind: "OpenID Provider") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @openid_provider.update(openid_provider_params)
        format.html { redirect_to authentication_openid_providers_path(pagination_params), notice: t("model.update", kind: "OpenID Provider") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @openid_provider.destroy
    respond_to do |format|
        format.html { redirect_to authentication_openid_providers_path(pagination_params), notice: t("model.destroy", kind: "OpenID Provider") }
    end
  end

  private
    def set_openid_provider
      @openid_provider = OpenidProvider.find(params[:id])
    end

    def openid_provider_params
      params.require(:openid_provider).permit(:name, :url)
    end
end
