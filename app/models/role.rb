class Role < ActiveRecord::Base

  ###############
  # Validations
  ###############
  validates :name, presence: true, uniqueness: true, allow_blank: false

  ###############
  # Associations
  ###############
  has_many :users

  ###############
  # Public API
  ###############
  def destroy
    return super if users_count.to_i == 0

    # Will not delete the role if it has any associated user with it.
    self.errors.add(:base, I18n.t("model.destroy_fail", kind: self.class.name))
    false
  end

end
