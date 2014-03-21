class Organization::OrganizationStructuresController < ApplicationController
  before_action :set_organization_structure, only: [:edit, :update, :destroy]

  def index
  end

  def show_structure
    organization_structure = OrganizationStructure.get_organization_with_structure
    parent_ids = organization_structure.map(&:parent_id).uniq

    tree_view_data =  OrganizationStructure.to_tree_view_data_from organization_structure

    render json: {
        structure: tree_view_data,
        parent_ids: parent_ids
      }
  end

  def new
    @organization_structure = OrganizationStructure.new
  end

  def edit
  end

  def create
    @organization_structure = OrganizationStructure.new organization_structure_new_params

    if @organization_structure.save
      set_flash_messages(type: "alert", message: t("model.create", kind: "Unit"))
    end

  end

  def update
    if @organization_structure.update organization_structure_update_params
      set_flash_messages(type: "alert", message: t("model.update", kind: "Unit"))
    end
  end

  def destroy
    if @organization_structure.destroy
      set_flash_messages(type: "alert", message: t("model.destroy", kind: "Unit"))
    end
  end

  private

  def set_organization_structure
    @organization_structure = OrganizationStructure.find(params[:id])
  end

  def organization_structure_update_params
    params.require(:organization_structure).permit(:unit_id, :name, :description)
  end

  def organization_structure_new_params
    params.require(:organization_structure).permit(:unit_id, :name, :description, :node_id, :parent_id)
  end

end
