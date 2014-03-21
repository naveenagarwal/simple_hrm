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
  validates :unit_id, presence: true, allow_baknk: false

  ###############
  # Associations
  ###############
  has_many :childs, class_name: "OrganizationStructure",
              foreign_key: :parent_id, dependent: :destroy

  belongs_to :node, class_name: "OrganizationStructure"

  ###############
  # Class Methods
  ###############
  class << self

    def get_organization_with_structure
      organization_structure = where( node_id: nil, parent_id: nil ).first

      (
       [organization_structure] << OrganizationStructure.includes(:childs).
          where(node_id: organization_structure.id).
          order(:parent_id).all
      ).flatten
    end

    def to_tree_view_data_from(organization_structure)
      organization_structure.collect do |structure|
        {
          short_name:       structure.short_name,
          node_id:    structure.node_id,
          parent_id:  structure.parent_id,
          title_text: structure.title_text,
          id:         structure.id
        }
      end
    end

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

  def parent_id
    read_attribute(:parent_id) || id
  end

  def node_id
    read_attribute(:node_id) || id
  end

  def short_name
    "#{unit_id} - #{name.truncate(10)}"
  end

  def title_text
    "Unit: #{unit_id} - Name: #{name}"
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
