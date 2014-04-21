class Configuration::HolidaysController < ApplicationController
  before_action :set_holiday, only: [:edit, :update, :destroy]

  def index
    @holidays = paginated_records_for Holiday
  end

  def new
    @holiday = Holiday.new
  end

  def edit
  end

  def create
    @holiday = Holiday.new(configuration_holiday_params)

    respond_to do |format|
      if @holiday.save
        format.html { redirect_to configuration_holidays_path(pagination_params), notice: t("model.create", kind: "Holiday") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @holiday.update(configuration_holiday_params)
        format.html { redirect_to configuration_holidays_path(pagination_params), notice: t("model.update", kind: "Holiday") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @holiday.destroy
    respond_to do |format|
        format.html { redirect_to configuration_holidays_path(pagination_params), notice: t("model.destroy", kind: "Holiday") }
    end
  end

  private

  def set_holiday
    @holiday = Holiday.find(params[:id])
  end

  def configuration_holiday_params
    params.require(:holiday).permit(:name, :on, :repeat_annually, :period, :country)
  end

end
