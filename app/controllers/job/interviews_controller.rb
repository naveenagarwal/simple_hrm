class Job::InterviewsController < ApplicationController
  before_action :set_job_interview, only: [:edit, :update, :destroy]

  def index
    @job_interviews = Paginate.get_records(
        relation_object:  Interview,
        page:             params[:page],
        per_page:         params[:per_page]
      )
  end

  def new
    @job_interview = Interview.new
  end

  def edit
  end

  def create
    @job_interview = Interview.new(job_interview_params)

    respond_to do |format|
      if @job_interview.save
        format.html { redirect_to job_interviews_path(pagination_params), notice: t("model.create", kind: "Job Interview") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @job_interview.update(job_interview_params)
        format.html { redirect_to job_interviews_path(pagination_params), notice: t("model.update", kind: "Job Interview") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @job_interview.destroy
    respond_to do |format|
      format.html { redirect_to job_interviews_path(pagination_params), notice: t("model.destroy", kind: "Job Interview") }
    end
  end

  private
    def set_job_interview
      @job_interview = Interview.find(params[:id])
    end

    def job_interview_params
      params.require(:interview).permit(:name)
    end
end
