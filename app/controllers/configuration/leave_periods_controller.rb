class Configuration::LeavePeriodsController < ApplicationController
  before_action :set_leave_period, only: [:edit, :update, :destroy]

  def index
    @leave_periods = paginated_records_for LeavePeriod
  end

  def new
    @leave_period = LeavePeriod.new
  end

  def edit
  end

  def create
    @leave_period = LeavePeriod.new(leave_period_params)

    respond_to do |format|
      if @leave_period.save
        format.html { redirect_to configuration_leave_periods_path(pagination_params), notice: t("model.create", kind: "Leave Period") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @leave_period.update(leave_period_params)
        format.html { redirect_to configuration_leave_periods_path(pagination_params), notice: t("model.update", kind: "Leave Period") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @leave_period.destroy
    respond_to do |format|
      format.html { redirect_to configuration_leave_periods_path(pagination_params), notice: t("model.destroy", kind: "Leave Period") }
    end
  end

  private

  def set_leave_period
    @leave_period = LeavePeriod.find(params[:id])
  end

  def leave_period_params
    params.require(:leave_period).permit(:start_month, :start_date, :active)
  end

end
