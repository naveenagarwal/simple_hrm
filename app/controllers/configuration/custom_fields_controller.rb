class Configuration::CustomFieldsController < ApplicationController
  before_action :set_custom_field, only: [:edit, :update, :destroy]

  def index
    @custom_fields = paginated_records_for CustomField
  end

  def new
    @custom_field = CustomField.new
  end

  def edit
  end

  def create
    @custom_field = CustomField.new(custom_field_params)

    respond_to do |format|
      if @custom_field.save
        format.html { redirect_to configuration_custom_fields_path(pagination_params), notice: t("model.create", kind: "Custom Field") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @custom_field.update(custom_field_params)
        format.html { redirect_to configuration_custom_fields_path(pagination_params), notice: t("model.update", kind: "Custom Field") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @custom_field.destroy
    respond_to do |format|
      format.html { redirect_to configuration_custom_fields_path(pagination_params), notice: t("model.destroy", kind: "Custom Field") }
    end
  end

  private

  def set_custom_field
    @custom_field = CustomField.find(params[:id])
  end

  def custom_field_params
    params.require(:custom_field).permit(:name, :screen, :field_type)
  end

end
