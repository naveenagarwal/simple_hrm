require 'spec_helper'

describe Leave do

  before do
    @leave = Leave.new
  end

  it "will not enter leave into the system with blank attributes" do
    @leave.save.should be_false

    [:user_id, :leave_type_id, :from, :to, :comment, :status].each do |field|
      @leave.should have_at_least(1).error_on(field)
    end
  end

end
