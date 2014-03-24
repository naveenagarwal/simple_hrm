class News < ActiveRecord::Base

  ################
  # Associaitons
  ################
  has_many :documents, as: :attachment polymorphic: true
  has_many :publishes, as: :publisher, dependent: :destroy

end
