class Qualifications::LicensesController < ApplicationController
  before_action :set_license, only: [:edit, :update, :destroy]

  def index
    @qualifications_licenses = paginated_records_for License
  end

  def new
    @qualifications_license = License.new
  end

  def edit
  end

  def create
    @qualifications_license = License.new(license_params)

    respond_to do |format|
      if @qualifications_license.save
        format.html { redirect_to qualifications_licenses_path(pagination_params), notice: t("model.create", kind: "License") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @qualifications_license.update(license_params)
        format.html { redirect_to qualifications_licenses_path(pagination_params), notice: t("model.update", kind: "License") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @qualifications_license.destroy
    respond_to do |format|
      format.html { redirect_to qualifications_licenses_path(pagination_params), notice: t("model.destroy", kind: "License") }
    end
  end

  private
    def set_license
      @qualifications_license = License.find(params[:id])
    end

    def license_params
      params.require(:license).permit(:name)
    end
end
