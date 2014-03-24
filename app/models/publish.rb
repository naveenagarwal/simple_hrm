class Publish < ActiveRecord::Base

  ################
  # Associations
  ################
  belongs_to :publisher, polymorphic: true

end
