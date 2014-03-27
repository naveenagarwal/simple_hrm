class SubscribersController < ApplicationController
  before_action :set_subscriber, only: [:edit, :update, :destroy]

  def new
    @subscriber = Subscriber.new(subscriber_params)
  end

  def edit
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      @subscribers = get_all_subscribers
    end
  end

  def update
    if @subscriber.update(subscriber_params)
      @subscribers = get_all_subscribers
    end
  end

  def destroy
    if @subscriber.destroy
      @subscribers = get_all_subscribers
    end
  end

  private

  def set_subscriber
    @subscriber = Subscriber.find(params[:id])
  end

  def subscriber_params
    params.require(:subscriber).permit(:name, :email, :subscribable_id, :subscribable_type)
  end

  def get_all_subscribers
    paginated_records_for @subscriber.subscribable.subscribers.order("updated_at DESC")
  end

end
