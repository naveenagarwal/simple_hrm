class Configuration::WorkWeeksController < ApplicationController
  before_action :set_work_week, only: [:edit, :update, :destroy]

  def index
    @work_weeks = paginated_records_for WorkWeek
  end

  def new
    @work_week = WorkWeek.new
  end

  def edit
  end

  def create
    @work_week = WorkWeek.new(work_week_params)

    respond_to do |format|
      if @work_week.save
        format.html { redirect_to configuration_work_weeks_path(pagination_params), notice: t("model.create", kind: "Work week") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_week.update(work_week_params)
        format.html { redirect_to configuration_work_weeks_path(pagination_params), notice: t("model.update", kind: "Work week") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @work_week.destroy
    respond_to do |format|
      format.html { redirect_to configuration_work_weeks_path(pagination_params), notice: t("model.destroy", kind: "Work week") }
    end
  end

  private

  def set_work_week
    @work_week = WorkWeek.find(params[:id])
  end

  def work_week_params
    params.require(:work_week).permit(
      :country, weekdays_info: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]
    )
  end

end
