class NotificationsController < ApplicationController
  before_action :set_notification, only: [:edit, :update, :destroy]

  def index
    @notifications = paginated_records_for Notification.includes(:event)
  end

  def new
    @notification = Notification.new
  end

  def edit
  end

  def create
    @notification = Notification.new(notification_params)

    respond_to do |format|
      if @notification.save
        format.html { redirect_to notifications_path(pagination_params), notice: t("model.create", kind: "Notification") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @notification.valid?
        @notification.recepients.destroy_all
        @notification.update(notification_params)
        format.html { redirect_to notifications_path(pagination_params), notice: t("model.update", kind: "Notification") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @notification.destroy
    respond_to do |format|
        format.html { redirect_to notifications_path(pagination_params), notice: t("model.destroy", kind: "Notification") }
    end
  end

  private
    def set_notification
      @notification = Notification.find(params[:id])
    end

    def notification_params
      params.require(:notification).permit(
          :event_name, :event_id, :notified_before,
          recepients_attributes: [:id, :publish_to],
          employee_ids: []
        )
    end
end
