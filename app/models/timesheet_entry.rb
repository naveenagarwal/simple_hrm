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
  class << self

    def update_entries(entries_hash)
      update(entries_hash.keys, entries_hash.values).reject { |entry| entry.errors.empty? }
    end

  end

  ###############
  # Public API
  ###############
  def approved?
    status == AppEnumerables::TimesheetEntryStatus::Approved.value
  end

  def pending?
    status == AppEnumerables::TimesheetEntryStatus::Pending.value
  end

  def rejected?
    status == AppEnumerables::TimesheetEntryStatus::Rejected.value
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
