class Timesheets::EmployeeTimesheetsController < ApplicationController
  before_action :set_employee_timesheet, only: [:show, :edit, :update, :destroy]

  def index
    @employees = User.select("email, id")
  end

  def show
    @employee_timesheets = paginated_records_for @employee.timesheets.get_entries(
        status: params[:type],
        period: params[:period]
      )
  end

  def new
    @employee_timesheet = Timesheet.new
  end

  def edit
  end

  def create
    @employee_timesheet = Timesheet.new

    respond_to do |format|
      if @employee_timesheet.save
        format.html { redirect_to @employee_timesheet, notice: 'Employee timesheet was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    @entries = @employee.timesheet_entries.update_entries(params[:timesheet_entries])

    if @entries.blank?
      set_flash_messages(type: "notice", message: t("model.update", kind: "Timesheet"))
    else
      set_flash_messages(type: "alert", message: t("model.update_fail", kind: "Timesheet"))
    end
  end

  def destroy
    @employee_timesheet.destroy
    respond_to do |format|
      format.html { redirect_to timsheets_employee_timesheets_url }
    end
  end

  private

  def set_employee_timesheet
    @employee = User.find(params[:id])
  end

  def employee_timesheet_params
    params[:timsheets_employee_timesheet]
  end

end
