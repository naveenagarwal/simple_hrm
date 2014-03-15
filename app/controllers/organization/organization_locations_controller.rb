class Organization::OrganizationLocationsController < ApplicationController
  before_action :set_organization_organization_location, only: [:show, :edit, :update, :destroy]

  # GET /organization/organization_locations
  # GET /organization/organization_locations.json
  def index
    @organization_organization_locations = Organization::OrganizationLocation.all
  end

  # GET /organization/organization_locations/new
  def new
    @organization_organization_location = Organization::OrganizationLocation.new
  end

  # GET /organization/organization_locations/1/edit
  def edit
  end

  # POST /organization/organization_locations
  # POST /organization/organization_locations.json
  def create
    @organization_organization_location = Organization::OrganizationLocation.new(organization_organization_location_params)

    respond_to do |format|
      if @organization_organization_location.save
        format.html { redirect_to @organization_organization_location, notice: 'Organization location was successfully created.' }
        format.json { render action: 'show', status: :created, location: @organization_organization_location }
      else
        format.html { render action: 'new' }
        format.json { render json: @organization_organization_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization/organization_locations/1
  # PATCH/PUT /organization/organization_locations/1.json
  def update
    respond_to do |format|
      if @organization_organization_location.update(organization_organization_location_params)
        format.html { redirect_to @organization_organization_location, notice: 'Organization location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @organization_organization_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization/organization_locations/1
  # DELETE /organization/organization_locations/1.json
  def destroy
    @organization_organization_location.destroy
    respond_to do |format|
      format.html { redirect_to organization_organization_locations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_organization_location
      @organization_organization_location = Organization::OrganizationLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_organization_location_params
      params.require(:organization_organization_location).permit(:name, :number_of_employees)
    end
end
