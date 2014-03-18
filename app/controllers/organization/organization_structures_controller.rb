class Organization::OrganizationStructuresController < ApplicationController
  before_action :set_organization_structure, only: [:edit, :update, :destroy]

  def index
  end

  def show_structure
    @organization_structure = OrganizationStructure.get_organization_with_structure
    render json: @organization_structure, except: [:created_at, :updated_at]
  end

  def new
    @organization_structure = OrganizationStructure.new
  end

  def edit
  end

  def create
    @organization_structure = OrganizationStructure.new(organization_organization_structure_params)

    respond_to do |format|
      if @organization_structure.save
        format.html { redirect_to @organization_structure, notice: 'Organization structure was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @organization_structure.update(organization_organization_structure_params)
        format.html { redirect_to @organization_structure, notice: 'Organization structure was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @organization_structure.destroy
    respond_to do |format|
      format.html { redirect_to organization_organization_structures_url }
    end
  end

  private
    def set_organization_organization_structure
      @organization_structure = OrganizationStructure.find(params[:id])
    end

    def organization_organization_structure_params
      params.require(:organization_organization_structure).permit(:unit_id, :name, :description)
    end
end
