class Job::SalaryComponentsController < ApplicationController
  before_action :set_job_salary_component, only: [:show, :edit, :update, :destroy]

  # GET /job/salary_components
  # GET /job/salary_components.json
  def index
    @job_salary_components = Job::SalaryComponent.all
  end

  # GET /job/salary_components/1
  # GET /job/salary_components/1.json
  def show
  end

  # GET /job/salary_components/new
  def new
    @job_salary_component = Job::SalaryComponent.new
  end

  # GET /job/salary_components/1/edit
  def edit
  end

  # POST /job/salary_components
  # POST /job/salary_components.json
  def create
    @job_salary_component = Job::SalaryComponent.new(job_salary_component_params)

    respond_to do |format|
      if @job_salary_component.save
        format.html { redirect_to @job_salary_component, notice: 'Salary component was successfully created.' }
        format.json { render action: 'show', status: :created, location: @job_salary_component }
      else
        format.html { render action: 'new' }
        format.json { render json: @job_salary_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job/salary_components/1
  # PATCH/PUT /job/salary_components/1.json
  def update
    respond_to do |format|
      if @job_salary_component.update(job_salary_component_params)
        format.html { redirect_to @job_salary_component, notice: 'Salary component was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job_salary_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job/salary_components/1
  # DELETE /job/salary_components/1.json
  def destroy
    @job_salary_component.destroy
    respond_to do |format|
      format.html { redirect_to job_salary_components_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_salary_component
      @job_salary_component = Job::SalaryComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_salary_component_params
      params[:job_salary_component]
    end
end
