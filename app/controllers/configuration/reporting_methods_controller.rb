class Configuration::ReportingMethodsController < ApplicationController
  before_action :set_reporting_method, only: [:edit, :update, :destroy]

  def index
    @reporting_methods = paginated_records_for ReportingMethod
  end

  def new
    @reporting_method = ReportingMethod.new
  end

  def edit
  end

  def create
    @reporting_method = ReportingMethod.new(reporting_method_params)

    respond_to do |format|
      if @reporting_method.save
        format.html { redirect_to configuration_reporting_methods_path(pagination_params), notice: t("model.create", kind: "Reporting Method") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @reporting_method.update(reporting_method_params)
        format.html { redirect_to configuration_reporting_methods_path(pagination_params), notice: t("model.update", kind: "Reporting Method") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @reporting_method.destroy
    respond_to do |format|
      format.html { redirect_to configuration_reporting_methods_path(pagination_params), notice: t("model.destroy", kind: "Reporting Method") }
    end
  end

  private

  def set_reporting_method
    @reporting_method = ReportingMethod.find(params[:id])
  end

  def reporting_method_params
    params.require(:reporting_method).permit(:name)
  end

end
