class Configuration::LeaveNotificationsController < ApplicationController
  before_action :set_configuration_leave_notification, only: [:show, :edit, :update, :destroy]

  # GET /configuration/leave_notifications
  # GET /configuration/leave_notifications.json
  def index
    @configuration_leave_notifications = Configuration::LeaveNotification.all
  end

  # GET /configuration/leave_notifications/1
  # GET /configuration/leave_notifications/1.json
  def show
  end

  # GET /configuration/leave_notifications/new
  def new
    @configuration_leave_notification = Configuration::LeaveNotification.new
  end

  # GET /configuration/leave_notifications/1/edit
  def edit
  end

  # POST /configuration/leave_notifications
  # POST /configuration/leave_notifications.json
  def create
    @configuration_leave_notification = Configuration::LeaveNotification.new(configuration_leave_notification_params)

    respond_to do |format|
      if @configuration_leave_notification.save
        format.html { redirect_to @configuration_leave_notification, notice: 'Leave notification was successfully created.' }
        format.json { render action: 'show', status: :created, location: @configuration_leave_notification }
      else
        format.html { render action: 'new' }
        format.json { render json: @configuration_leave_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configuration/leave_notifications/1
  # PATCH/PUT /configuration/leave_notifications/1.json
  def update
    respond_to do |format|
      if @configuration_leave_notification.update(configuration_leave_notification_params)
        format.html { redirect_to @configuration_leave_notification, notice: 'Leave notification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @configuration_leave_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configuration/leave_notifications/1
  # DELETE /configuration/leave_notifications/1.json
  def destroy
    @configuration_leave_notification.destroy
    respond_to do |format|
      format.html { redirect_to configuration_leave_notifications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configuration_leave_notification
      @configuration_leave_notification = Configuration::LeaveNotification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configuration_leave_notification_params
      params[:configuration_leave_notification]
    end
end
