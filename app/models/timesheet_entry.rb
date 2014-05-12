class TimesheetEntry < ActiveRecord::Base
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
  # Scopes
  ###############
  scope :pending,  -> { where(status: AppEnumerables::TimesheetEntryStatus::Pending.value)  }
  scope :approved, -> { where(status: AppEnumerables::TimesheetEntryStatus::Approved.value) }
  scope :rejected, -> { where(status: AppEnumerables::TimesheetEntryStatus::Rejected.value) }

  ###############
  # Validations
  ###############
  validates :project_id, :project_task_id, :description, :time_spent, :status,
            presence: true

  ###############
  # Associations
  ###############
  belongs_to :project
  belongs_to :timesheet
  belongs_to :project_task

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############

  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

end
