class Profile < ActiveRecord::Base

  ###############
  # Associations
  ###############
  belongs_to :profileable, polymorphic: true
end
