class Notification < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###################
  # serialized attr.
  ###################
  serialize :employee_ids, Array

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
  has_many :recepients, as: :publisher, class_name: "Publish" ,dependent: :destroy
  belongs_to :event

  ####################
  # Nested Attributes
  ####################
  accepts_nested_attributes_for :recepients,
    reject_if: :all_blank

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def recepients_default_hash
    {
      label_name: "Recipients",
      attributes_name: "recepients_attributes",
      association_name: "recepients"
    }
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
