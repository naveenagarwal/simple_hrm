class Job::EmploymentStatusesController < ApplicationController
  before_action :set_employment_status, only: [:edit, :update, :destroy]

  def index
    @employment_statuses = Paginate.get_records(
        relation_object:  EmploymentStatus,
        page:             params[:page],
        per_page:         params[:per_page]
      )
  end

  def new
    @employment_status = EmploymentStatus.new
  end

  def edit
  end

  def create
    @employment_status = EmploymentStatus.new(employment_status_params)

    respond_to do |format|
      if @employment_status.save
        format.html { redirect_to job_job_categories_path(pagination_params), notice: t("model.create", kind: "Employment Status") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @employment_status.update(employment_status_params)
        format.html { redirect_to job_job_categories_path(pagination_params), notice: t("model.update", kind: "Employment Status") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @employment_status.destroy
    respond_to do |format|
      format.html { redirect_to job_job_categories_path(pagination_params), notice: t("model.destroy", kind: "Employment Status") }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_status
      @employment_status = EmploymentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_status_params
      params.require(:employment_status).permit(:name)
    end
end
