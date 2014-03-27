class EmailSubscription < ActiveRecord::Base
  ###############
  # Includes
  ###############

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
  has_many :subscribers, as: :subscribable, dependent: :destroy

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def subscribers_to_s
    subscribers.map { |subscriber|
        "#{subscriber.name}<#{subscriber.email}>"
      }.join(", ")
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
