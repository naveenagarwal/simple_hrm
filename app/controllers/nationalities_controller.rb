class NationalitiesController < ApplicationController
  before_action :set_nationality, only: [:edit, :update, :destroy]

  def index
    @nationalities = paginated_records_for Nationality
  end

  def new
    @nationality = Nationality.new
  end

  def edit
  end

  def create
    @nationality = Nationality.new(nationality_params)

    respond_to do |format|
      if @nationality.save
        format.html { redirect_to nationalities_path(pagination_params), notice: t("model.create", kind: "Nationality") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @nationality.update(nationality_params)
        format.html { redirect_to nationalities_path(pagination_params), notice: t("model.update", kind: "Nationality") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @nationality.destroy
    respond_to do |format|
      format.html { redirect_to nationalities_path(pagination_params), notice: t("model.destroy", kind: "Nationality") }
    end
  end

  private

  def set_nationality
    @nationality = Nationality.find(params[:id])
  end

  def nationality_params
    params.require(:nationality).permit(:name)
  end

end
