class Job::WorkShiftsController < ApplicationController
  before_action :set_work_shift, only: [:edit, :update, :destroy]

  def index
    @work_shifts = paginated_records_for WorkShift
  end

  def new
    @work_shift = WorkShift.new
  end

  def edit
  end

  def create
    @work_shift = WorkShift.new(work_shift_params)

    respond_to do |format|
      if @work_shift.save
        format.html { redirect_to job_work_shifts_path(pagination_params), notice: t("model.create", kind: "Work Shift") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_shift.update(work_shift_params)
        format.html { redirect_to job_work_shifts_path(pagination_params), notice: t("model.update", kind: "Work Shift") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @work_shift.destroy
    respond_to do |format|
      format.html { redirect_to job_work_shifts_path(pagination_params), notice: t("model.destroy", kind: "Work Shift") }
    end
  end

  private

  def set_work_shift
    @work_shift = WorkShift.find(params[:id])
  end

  def work_shift_params
    params.require(:work_shift).permit(:name, :from, :to, :user_ids => [])
  end

end
