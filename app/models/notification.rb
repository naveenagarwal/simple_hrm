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
  validates :event_name, presence: true, allow_blank: false
  validates :employee_ids, presence: { message: "~Employee names can't be blank"}, allow_blank: false
  validates :event_id, presence: true

  ###############
  # Callbacks
  ###############
  before_validation :remove_blank_employee_names

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

  def remove_blank_employee_names
    self.employee_ids = employee_ids.reject(&:blank?)
  end

end
