require 'spec_helper'

describe WorkShift do

  describe "#public api" do
    before do
      @work_shift = create :work_shift
    end

    it "return the duration in hours" do
      expect(@work_shift.duration).to equal(5.5)
    end

    it "returns the assigned users to a workshift" do
      create(:user_work_shift)
      user = User.first
      expect(@work_shift.users.size).to equal(1)
      expect(@work_shift.users.first.id).to equal(user.id)
    end

  end

  it "returns the remaining users who are not assigned to any of the work shifts" do
    create(:user_work_shift)
    user1 = create(:user1)
    work_shifts = WorkShift.unassigned_users
    expect(work_shifts.size).to equal(1)
    expect(work_shifts.first.id).to equal(user1.id)
  end

end
