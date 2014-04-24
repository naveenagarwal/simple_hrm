class LeaveOverlapValidator < ActiveModel::Validator

  def validate(leave)
    if leave.user
      leaves = leave.user.leaves.load - [leave]

      return unless leaves

      if overlapped_in(leaves, leave)
        leave.errors.add(:base, "~leave already applied in this date range")
      end
    end
  end

  def overlapped_in(leaves, leave)
    leaves.any? do |l|
      date_range = l.from..l.to
      date_range.include?(leave.from) || date_range.include?(leave.to)
    end
  end

end