class Configuration::EmailSubscriptionsController < ApplicationController
  before_action :set_email_subscription, only: [:edit, :update, :destroy]

  def index
    @email_subscriptions = paginated_records_for EmailSubscription.includes(:subscribers)
  end

  def new
    @email_subscription = EmailSubscription.new
  end

  def create
    @email_subscription = EmailSubscription.new(email_subscription_params)

    respond_to do |format|
      if @email_subscription.save
        format.html { redirect_to configuration_email_subscriptions_path(pagination_params), notice: t("model.create", kind: "Email Subscription") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def edit
    @subscribers = paginated_records_for @email_subscription.subscribers.order("updated_at DESC")
  end

  def update
    respond_to do |format|
      if @email_subscription.update(email_subscription_params)
        format.html { redirect_to configuration_email_subscriptions_path(pagination_params), notice: t("model.update", kind: "Email Subscription") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @email_subscription.destroy

    respond_to do |format|
      format.html { redirect_to configuration_email_subscriptions_path(pagination_params), notice: t("model.destroy", kind: "Email Subscription") }
    end
  end

  private

  def set_email_subscription
    @email_subscription = EmailSubscription.find(params[:id])
  end

  def email_subscription_params
    params.require(:email_subscription).permit(:name, :enabled)
  end

end
