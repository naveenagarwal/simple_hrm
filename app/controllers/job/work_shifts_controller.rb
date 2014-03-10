class Job::WorkShiftsController < ApplicationController
  before_action :set_work_shift, only: [:edit, :update, :destroy]

  def index
    @work_shifts = WorkShift.all
  end

  def show
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
        format.html { redirect_to @work_shift, notice: 'Work shift was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_shift.update(work_shift_params)
        format.html { redirect_to @work_shift, notice: 'Work shift was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @work_shift.destroy
    respond_to do |format|
      format.html { redirect_to work_shifts_url }
    end
  end

  private
    def set_work_shift
      @work_shift = WorkShift.find(params[:id])
    end

    def work_shift_params
      params.require(:work_shift).permit(:name, :from, :to)
    end
end
