class Configuration::CsvImportsController < ApplicationController
  before_action :set_csv_import, only: [:edit, :update, :destroy]

  def index
    @csv_imports = paginated_records_for CsvImport
  end

  def new
    @csv_import = CsvImport.new
  end

  def edit
  end

  def create
    @csv_import = CsvImport.new(configuration_csv_import_params)

    respond_to do |format|
      if @csv_import.save
        format.html { redirect_to configuration_csv_imports_path(pagination_params), notice: t("model.create", kind: "File") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @csv_import.update(configuration_csv_import_params)
        format.html { redirect_to configuration_csv_imports_path(pagination_params), notice: t("model.update", kind: "File") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @csv_import.destroy
    respond_to do |format|
        format.html { redirect_to configuration_csv_imports_path(pagination_params), notice: t("model.destroy", kind: "File") }
    end
  end

  private

  def set_csv_import
    @csv_import = CsvImport.find(params[:id])
  end

  def configuration_csv_import_params
    params.require(:csv_import).permit(:attachment)
  end

end
