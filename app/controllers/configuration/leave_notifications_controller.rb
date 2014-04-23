class Configuration::LeaveNotificationsController < ApplicationController
  before_action :set_leave_notification, only: [:edit, :update, :destroy]

  def index
    @leave_notifications = paginated_records_for LeaveNotification.order("send_on DESC")
  end

  def new
    @leave_notification = LeaveNotification.new
  end

  def edit
  end

  def create
    @leave_notification = LeaveNotification.new(configuration_leave_notification_params)

    respond_to do |format|
      if @leave_notification.save
        format.html { redirect_to configuration_leave_notifications_path(pagination_params), notice: t("model.create", kind: "Leave Notification") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @leave_notification.update(configuration_leave_notification_params)
        format.html { redirect_to configuration_leave_notifications_path(pagination_params), notice: t("model.update", kind: "Leave Notification") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @leave_notification.destroy
    respond_to do |format|
      format.html { redirect_to configuration_leave_notifications_path(pagination_params), notice: t("model.destroy", kind: "Leave Notification") }
    end
  end

  private

  def set_leave_notification
    @leave_notification = LeaveNotification.find(params[:id])
  end

  def configuration_leave_notification_params
    params[:configuration_leave_notification]
  end

end
