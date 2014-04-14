class Configuration::LeaveTypesController < ApplicationController
  before_action :set_leave_type, only: [:show, :edit, :update, :destroy]

  def index
    @leave_types = paginated_records_for LeaveType
  end

  def show
  end

  def new
    @leave_type = LeaveType.new
  end

  def edit
  end

  def create
    @leave_type = LeaveType.new(leave_type_params)

    respond_to do |format|
      if @leave_type.save
        format.html { redirect_to configuration_leave_types_path(pagination_params), notice: t("model.create", kind: "Leave Type") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @leave_type.update(leave_type_params)
        format.html { redirect_to configuration_leave_types_path(pagination_params), notice: t("model.update", kind: "Leave Type") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @leave_type.destroy
    respond_to do |format|
      format.html { redirect_to configuration_leave_types_path(pagination_params), notice: t("model.destroy", kind: "Leave Type") }
    end
  end

  private

  def set_leave_type
    @leave_type = LeaveType.find(params[:id])
  end

  def leave_type_params
    params.require(:leave_type).permit(:name, :country)
  end

end
