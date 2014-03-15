class Job::CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @job_categories = paginated_records_for JobCategory
  end

  def new
    @job_category = JobCategory.new
  end

  def edit
  end

  def create
    @job_category = JobCategory.new(category_params)

    respond_to do |format|
      if @job_category.save
        format.html { redirect_to job_categories_path(pagination_params), notice: t("model.create", kind: "Job Category") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @job_category.update(category_params)
        format.html { redirect_to job_categories_path(pagination_params), notice: t("model.update", kind: "Job Category") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /job/categories/1
  # DELETE /job/categories/1.json
  def destroy
    @job_category.destroy
    respond_to do |format|
      format.html { redirect_to job_categories_path(pagination_params), notice: t("model.destroy", kind: "Job Category") }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @job_category = JobCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:job_category).permit(:name)
    end
end
