class Configuration::LeavesController < ApplicationController
  before_action :set_leave, only: [:edit, :update, :destroy]

  def index
    @leaves = paginated_records_for Leave.includes(:user, :leave_type).order("created_at DESC")
  end

  def new
    @leave = Leave.new
  end

  def edit
  end

  def create
    @leave        = Leave.new(leave_params)
    @leave.status = AppEnumerables::LeaveStatus::Pending.value

    respond_to do |format|
      if @leave.save
        format.html { redirect_to configuration_leaves_path(pagination_params), notice: t("model.create", kind: "Leave") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @leave.update(leave_params)
        format.html { redirect_to configuration_leaves_path(pagination_params), notice: t("model.update", kind: "Leave") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @leave.destroy
    respond_to do |format|
      format.html { redirect_to configuration_leaves_path(pagination_params), notice: t("model.destroy", kind: "Leave") }
    end
  end

  private

  def set_leave
    @leave = Leave.find(params[:id])
  end

  def leave_params
    params.require(:leave).permit(:user_id, :leave_type_id, :from, :to, :comment)
  end

end
