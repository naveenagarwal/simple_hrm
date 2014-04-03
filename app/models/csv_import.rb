class CsvImport < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Uploaders
  ###############
  mount_uploader :attachment, CsvImportUploader

  ###############
  # Constants
  ###############

  ###############
  # Accessors
  ###############

  ###############
  # Validations
  ###############

  ###############
  # Associations
  ###############

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def file_imported
    imported? ? "Yes" : "No"
  end
  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

end
