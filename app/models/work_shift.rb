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
  # Class Methods
  ###############
  class << self

    def unassigned_users
      user_ids = UserWorkShift.pluck(:user_id)
      User.where.not(id: user_ids).select("id, username")
    end

  end

  ###############
  # Public API
  ###############
  def duration
    to.difference_in_hours from
  end

  def remaining_users
    assigned_users + WorkShift.unassigned_users
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
