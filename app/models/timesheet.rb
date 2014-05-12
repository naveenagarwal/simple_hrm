class Timesheet < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Constants
  ###############
  SEVEN = 7

  ###############
  # Accessors
  ###############

  ###############
  # Validations
  ###############

  ###############
  # Associations
  ###############
  belongs_to :user

  has_many :timesheet_entries

  ###############
  # Class Methods
  ###############
  class << self

    def get_entries(status: nil, period: nil)
      status ||= AppEnumerables::TimesheetEntryStatus::Pending.value
      period ||= Timesheet::SEVEN

      status = AppEnumerables::TimesheetEntryStatus.map(&:value) if status == ALL

      for_date_range = period.to_i.days.ago.to_date..Date.today

      includes(:timesheet_entries).joins(:timesheet_entries).where(

          :"timesheet_entries.status" => status,
          :"timesheets.for_date"      => for_date_range

        ).order(:for_date)
    end

  end

  ###############
  # Public API
  ###############
  def pending_entries
    timesheet_entries.pending
  end

  def approved_entries
    timesheet_entries.approved
  end

  def rejected_entries
    timesheet_entries.rejected
  end

  def entries_by_status(entry_status)
    status = entry_status || AppEnumerables::TimesheetEntryStatus::Pending.value
    status = AppEnumerables::TimesheetEntryStatus.map(&:value) if status == ALL

    timesheet_entries.where(status: status)
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
