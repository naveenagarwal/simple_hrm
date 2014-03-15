class Organization::OrganizationLocationsController < ApplicationController
  before_action :set_organization_location, only: [:edit, :update, :destroy]

  def index
    @organization_locations = paginated_records_for OrganizationLocation
  end

  def new
    @organization_location = OrganizationLocation.new
  end

  def edit
  end

  def create
    @organization_location = OrganizationLocation.new(organization_location_params)

    respond_to do |format|
      if @organization_location.save
        format.html { redirect_to organization_organization_locations_path(pagination_params), notice: t("model.create", kind: "Organization Location") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @organization_location.update(organization_location_params)
        format.html { redirect_to organization_organization_locations_path(pagination_params), notice: t("model.update", kind: "Organization Location") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @organization_location.destroy
    respond_to do |format|
      format.html { redirect_to organization_organization_locations_path(pagination_params), notice: t("model.destroy", kind: "Organization Location") }
    end
  end

  private
    def set_organization_location
      @organization_location = OrganizationLocation.find(params[:id])
    end

    def organization_location_params
      params.require(:organization_location).
        permit(
            :name, :number_of_employees,
            address_attributes: [
              :id, :address, :city, :state, :zip, :country, :phone, :fax, :notes
            ]
          )
    end
end
