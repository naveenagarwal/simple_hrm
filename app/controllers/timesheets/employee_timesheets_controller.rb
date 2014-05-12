class Timesheets::EmployeeTimesheetsController < ApplicationController
  before_action :set_employee_timesheet, only: [:edit, :update, :destroy]

  def index
    @employees = User.select("email, id")
  end

  def show
    @employee = User.where(id: params[:id]).first

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
    respond_to do |format|
      if @employee_timesheet.update(timsheets_employee_timesheet_params)
        format.html { redirect_to @employee_timesheet, notice: 'Employee timesheet was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @employee_timesheet.destroy
    respond_to do |format|
      format.html { redirect_to timsheets_employee_timesheets_url }
    end
  end

  private

  def set_timsheets_employee_timesheet
    @employee_timesheet = Timesheet.new
  end

  def timsheets_employee_timesheet_params
    params[:timsheets_employee_timesheet]
  end

end
