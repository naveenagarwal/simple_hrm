class Configuration::WorkWeeksController < ApplicationController
  before_action :set_configuration_work_week, only: [:show, :edit, :update, :destroy]

  # GET /configuration/work_weeks
  # GET /configuration/work_weeks.json
  def index
    @configuration_work_weeks = Configuration::WorkWeek.all
  end

  # GET /configuration/work_weeks/1
  # GET /configuration/work_weeks/1.json
  def show
  end

  # GET /configuration/work_weeks/new
  def new
    @configuration_work_week = Configuration::WorkWeek.new
  end

  # GET /configuration/work_weeks/1/edit
  def edit
  end

  # POST /configuration/work_weeks
  # POST /configuration/work_weeks.json
  def create
    @configuration_work_week = Configuration::WorkWeek.new(configuration_work_week_params)

    respond_to do |format|
      if @configuration_work_week.save
        format.html { redirect_to @configuration_work_week, notice: 'Work week was successfully created.' }
        format.json { render action: 'show', status: :created, location: @configuration_work_week }
      else
        format.html { render action: 'new' }
        format.json { render json: @configuration_work_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configuration/work_weeks/1
  # PATCH/PUT /configuration/work_weeks/1.json
  def update
    respond_to do |format|
      if @configuration_work_week.update(configuration_work_week_params)
        format.html { redirect_to @configuration_work_week, notice: 'Work week was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @configuration_work_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configuration/work_weeks/1
  # DELETE /configuration/work_weeks/1.json
  def destroy
    @configuration_work_week.destroy
    respond_to do |format|
      format.html { redirect_to configuration_work_weeks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configuration_work_week
      @configuration_work_week = Configuration::WorkWeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configuration_work_week_params
      params[:configuration_work_week]
    end
end
