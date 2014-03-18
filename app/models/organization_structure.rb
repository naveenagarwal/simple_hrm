class OrganizationStructure < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Constants
  ###############

  ###############
  # Accessors
  ###############

  ###############
  # Validations
  ###############

  ###############
  # Associations
  ###############
  has_many :childs, class_name: "OrganizationStructure",
              foreign_key: :parent_id, dependent: :destroy

  belongs_to :node, class_name: "OrganizationStructure"

  ###############
  # Class Methods
  ###############
  def get_organization_with_structure
    organization_structure = where( node_id: nil, parent_id: nil ).first

    [organization_structure] << OrganizationStructure.includes(:childs).
      where(node_id: organization_structure.id).
      order(:parent_id).all
  end

  ###############
  # Public API
  ###############
  def create_child_with(structure_attributes)
    childs.create(
        structure_attributes.merge(
          node_id: node_id || id
        )
      )
  end

  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

end
