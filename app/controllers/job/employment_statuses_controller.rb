class Job::EmploymentStatusesController < ApplicationController
  before_action :set_job_employment_status, only: [:show, :edit, :update, :destroy]

  # GET /job/employment_statuses
  # GET /job/employment_statuses.json
  def index
    @job_employment_statuses = Job::EmploymentStatus.all
  end

  # GET /job/employment_statuses/1
  # GET /job/employment_statuses/1.json
  def show
  end

  # GET /job/employment_statuses/new
  def new
    @job_employment_status = Job::EmploymentStatus.new
  end

  # GET /job/employment_statuses/1/edit
  def edit
  end

  # POST /job/employment_statuses
  # POST /job/employment_statuses.json
  def create
    @job_employment_status = Job::EmploymentStatus.new(job_employment_status_params)

    respond_to do |format|
      if @job_employment_status.save
        format.html { redirect_to @job_employment_status, notice: 'Employment status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job_employment_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @job_employment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job/employment_statuses/1
  # PATCH/PUT /job/employment_statuses/1.json
  def update
    respond_to do |format|
      if @job_employment_status.update(job_employment_status_params)
        format.html { redirect_to @job_employment_status, notice: 'Employment status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job_employment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job/employment_statuses/1
  # DELETE /job/employment_statuses/1.json
  def destroy
    @job_employment_status.destroy
    respond_to do |format|
      format.html { redirect_to job_employment_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_employment_status
      @job_employment_status = Job::EmploymentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_employment_status_params
      params[:job_employment_status]
    end
end
