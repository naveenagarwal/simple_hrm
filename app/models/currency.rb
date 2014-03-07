class Currency < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Constants
  ###############

  ###############
  # Scopes
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
  class << self

    def sorted_collection
      sorted.collect {|r| [ r.short_name, r.id ] }
    end

    def sorted
      all.sort_by { |currency| currency.short_name }
    end

  end

  ###############
  # Public API
  ###############
  def name
    "#{full_name} (#{short_name})".squish!
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
