require 'spec_helper'

describe Leave do

  before do
    @leave = Leave.new
    @user = User.first || create(:user)
    @leave_type = LeaveType.first || create(:leave_type)
  end

  def set_leave_attributes
    @leave.user = @user
    @leave.leave_type = @leave_type
    @leave.from = 2.days.from_now
    @leave.to = @leave.from + 2.days
    @leave.comment = "Going on leave to test my app"
    @leave.status = AppEnumerables::LeaveStatus::Pending.value
  end

  it "will not enter leave into the system with blank attributes" do
    @leave.save.should be_false

    [:user_id, :leave_type_id, :from, :to, :comment, :status].each do |field|
      @leave.should have_at_least(1).error_on(field)
    end
  end

  it "will not let leave into the system if from date is less then tomorrow's date" do
    set_leave_attributes

    @leave.from = Date.today
    @leave.save.should be_false
    @leave.should have(1).error_on(:from)

    msg = "~From should be greater then today's date"

    expect(@leave.errors[:from]).to include(msg)
  end

  it "will not let leave into the system if to date is less then from date" do
    set_leave_attributes
    msg       = "can't be before \"From\""
    @leave.to = @leave.from - 1.day

    @leave.save.should be_false
    @leave.should have(1).error_on(:to)


    expect(@leave.errors[:to]).to include(msg)
  end

  it "will let leave into the system with valid data" do
    set_leave_attributes
    @leave.save.should be_true
  end

  it "will not let the user apply leave on the days if already applied and not rejected" do
    set_leave_attributes

    msg             = "~leave already applied in this date range"
    leave           = create(:leave)
    @leave.user_id  = leave.user_id
    @leave.from     = leave.from

    @leave.save.should be_false
    expect(@leave.errors[:base]).to include(msg)

    @leave.from     = leave.from - 2.days
    @leave.to       = leave.from

    @leave.save.should be_false
    expect(@leave.errors[:base]).to include(msg)
  end

end
