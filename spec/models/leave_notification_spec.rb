require 'spec_helper'

describe LeaveNotification do

  def assign_valid_data_to_leave_notification
    @leave_notification.name = "Christmas Holidays"
    @leave_notification.send_on = Time.now
    @leave_notification.for_days = 1
    @leave_notification.mail_subject = "Enjoy your Holidays"
  end

  before do
    @leave_notification = LeaveNotification.new
  end

  it "will not add notification without valid data" do
    @leave_notification.save.should be_false

    [:name, :send_on, :for_days, :mail_subject].each do |field|
      @leave_notification.should have_at_least(1).error_on(field)
    end

  end

  it "will check send_on should not be in past" do
    assign_valid_data_to_leave_notification
    @leave_notification.send_on = 2.days.ago

    @leave_notification.save.should be_false
    @leave_notification.should have(1).error_on(:send_on)
  end

  it "will check for_days should be greater than zero" do
    assign_valid_data_to_leave_notification
    @leave_notification.for_days = 0

    @leave_notification.save.should be_false
    @leave_notification.should have(1).error_on(:for_days)
  end

  it "will add notification with valid data" do
    assign_valid_data_to_leave_notification

    @leave_notification.save.should be_true
  end

end
