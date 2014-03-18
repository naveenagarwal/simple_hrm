class Organization::OrganizationStructuresController < ApplicationController
  before_action :set_organization_organization_structure, only: [:show, :edit, :update, :destroy]

  # GET /organization/organization_structures
  # GET /organization/organization_structures.json
  def index
    @organization_organization_structures = Organization::OrganizationStructure.all
  end

  # GET /organization/organization_structures/1
  # GET /organization/organization_structures/1.json
  def show
  end

  # GET /organization/organization_structures/new
  def new
    @organization_organization_structure = Organization::OrganizationStructure.new
  end

  # GET /organization/organization_structures/1/edit
  def edit
  end

  # POST /organization/organization_structures
  # POST /organization/organization_structures.json
  def create
    @organization_organization_structure = Organization::OrganizationStructure.new(organization_organization_structure_params)

    respond_to do |format|
      if @organization_organization_structure.save
        format.html { redirect_to @organization_organization_structure, notice: 'Organization structure was successfully created.' }
        format.json { render action: 'show', status: :created, location: @organization_organization_structure }
      else
        format.html { render action: 'new' }
        format.json { render json: @organization_organization_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization/organization_structures/1
  # PATCH/PUT /organization/organization_structures/1.json
  def update
    respond_to do |format|
      if @organization_organization_structure.update(organization_organization_structure_params)
        format.html { redirect_to @organization_organization_structure, notice: 'Organization structure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @organization_organization_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization/organization_structures/1
  # DELETE /organization/organization_structures/1.json
  def destroy
    @organization_organization_structure.destroy
    respond_to do |format|
      format.html { redirect_to organization_organization_structures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_organization_structure
      @organization_organization_structure = Organization::OrganizationStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_organization_structure_params
      params.require(:organization_organization_structure).permit(:unit_id, :name, :description)
    end
end
