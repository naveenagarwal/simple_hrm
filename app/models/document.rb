class Document < ActiveRecord::Base

  ################
  # Uploaders
  ################
  mount_uploader :file, AttachmentUploader

  ################
  # Validations
  ################

  ################
  # Callbacks
  ################
  before_save :update_file_attributes

  ################
  # Associaitons
  ################
  belongs_to :attachment_for, polymorphic: true
  belongs_to :creator, polymorphic: true

  ################
  # Class Methods
  ################
  class << self
  end

  ################
  # Public
  ################
  def file_name
    if file.present?
      File.basename file.url
    end
  end

  def file_size_in_kb
    file_size / 10024 if file_size
  end

  def file_size_in_mb
    file_size_in_kb / 1024 if file_size
  end

  ################
  # Private
  ################
  private

  def update_file_attributes
    if file.present? && file_changed?
      self.file_content_type = file.file.content_type
      self.file_size = file.file.size
    end
  end

end
