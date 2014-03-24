class Document < ActiveRecord::Base

  ################
  # Validations
  ################

  ################
  # Callbacks
  ################

  ################
  # Associaitons
  ################
  belongs_to :attachment, polymorphic: true
  belongs_to :creator, polymorphic: true

end
