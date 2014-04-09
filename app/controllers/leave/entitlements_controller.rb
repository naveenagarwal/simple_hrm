class Leave::EntitlementsController < ApplicationController
  before_action :set_leave_entitlement, only: [:edit, :update, :destroy]

  def index
    @leave_entitlements = paginated_records_for LeaveEntitlement
  end

  def new
    @leave_entitlement = LeaveEntitlement.new
  end

  def edit
  end

  def create
    @leave_entitlement = LeaveEntitlement.new(leave_entitlement_params)

    respond_to do |format|
      if @leave_entitlement.save
        format.html { redirect_to leave_entitlements_path(pagination_params), notice: t("model.create", kind: "Leave Entitlement") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @leave_entitlement.update(leave_entitlement_params)
        format.html { redirect_to leave_entitlements_path(pagination_params), notice: t("model.update", kind: "Leave Entitlement") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @leave_entitlement.destroy
    respond_to do |format|
      format.html { redirect_to leave_entitlements_path(pagination_params), notice: t("model.destroy", kind: "Leave Entitlement") }
    end
  end

  private

  def set_leave_entitlement
    @leave_entitlement = LeaveEntitlement.find(params[:id])
  end

  def leave_entitlement_params
    params.require(:leave_entitlement).permit(:user_id, :organization_location_id, :leave_type_id, :from, :to)
  end

end
