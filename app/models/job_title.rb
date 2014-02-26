class JobTitle < ActiveRecord::Base

  ##############
  # Uploaders
  ##############
  mount_uploader :specification, JobSpecificationUploader

  ##############
  # Validations
  ##############
  validates :name, presence: true



end
