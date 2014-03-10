class WorkShift < ActiveRecord::Base
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
  validates :name, presence: true, uniqueness: true, allow_blank: false

  validates_with MinMaxValidator,
    fields: { min: :from, max: :to, msg: "can't be before \"From\"" }

  ###############
  # Associations
  ###############
  has_many :user_work_shifts
  has_many :users, through: :user_work_shifts

  ###############
  # Nested Attr.
  ###############
  # accepts_nested_attributes_for :user_work_shifts,
  #   allow_destroy: true,
  #   reject_if: proc { |attributes| attributes['user_id'].blank? }

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def duration
    to.difference_in_hours from
  end

  def unassigned_users
    User.where.not(id: user_ids).select("id, username")
  end

  def assigned_users
    User.where(id: user_ids).select("id, username")
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
