class Document < ActiveRecord::Base

  ################
  # Uploaders
  ################
  mount_uploader :file, NewsAttachmentsUploader

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
  belongs_to :attachment, polymorphic: true
  belongs_to :creator, polymorphic: true

  ################
  # Class Methods
  ################
  class << self

    def add(attachment_for: nil, entity: nil, params: nil)

    end

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
