class News < ActiveRecord::Base

  ################
  # Associaitons
  ################
  has_many :documents, as: :attachment, dependent: :destroy
  has_many :publishes, as: :publisher, dependent: :destroy

  ####################
  # Nested Attributes
  ####################
  accepts_nested_attributes_for :publishes,
    reject_if: :all_blank

end
