class ManageNewsController < ApplicationController
  before_action :set_news, only: [:edit, :update, :destroy]

  def index
    @news = paginated_records_for News
  end

  def new
    @news = News.new
  end

  def edit
  end

  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to manage_news_index_path(pagination_params), notice: t("model.create", kind: "News") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @news.valid?
        @news.publishes.destroy_all
        @news.update(news_params)
        format.html { redirect_to manage_news_index_path(pagination_params), notice: t("model.update", kind: "News") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to manage_news_index_path(pagination_params), notice: t("model.destroy", kind: "News") }
    end
  end

  private

  def set_news
    @news = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:topic, :description, :published_at, publishes_attributes: [:id, :publish_to])
  end

end
