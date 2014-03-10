class Job::JobTitlesController < ApplicationController
  before_action :set_job_title, only: [:edit, :update, :destroy, :destroy_specification]

  before_filter :verify_xhr, only: [:destroy_specification]

  def index
    @job_titles = Paginate.get_records(
        relation_object:  JobTitle,
        page:             params[:page],
        per_page:         params[:per_page]
      )
  end

  # GET /job/job_titles/new
  def new
    @job_title = JobTitle.new
  end

  # GET /job/job_titles/1/edit
  def edit
  end

  # POST /job/job_titles
  # POST /job/job_titles.json
  def create
    @job_title = JobTitle.new(job_title_params)

    respond_to do |format|
      if @job_title.save
        format.html { redirect_to job_job_titles_path(pagination_params), notice: t("model.create", kind: "Job Title") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /job/job_titles/1
  # PATCH/PUT /job/job_titles/1.json
  def update
    respond_to do |format|
      if @job_title.update(job_title_params)
        format.html { redirect_to job_job_titles_path(pagination_params), notice: t("model.update", kind: "Job Title") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /job/job_titles/1
  # DELETE /job/job_titles/1.json
  def destroy
    @job_title.destroy
    respond_to do |format|
      format.html { redirect_to job_job_titles_path(pagination_params), notice: t("model.destroy", kind: "Job Title") }
    end
  end

  def destroy_specification
    @job_title.remove_specification!
    @job_title.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_title
      @job_title = JobTitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_title_params
      params.require(:job_title).permit(:name, :description, :specification, :note, :remove_specification)
    end
end
