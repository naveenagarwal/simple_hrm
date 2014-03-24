class Qualifications::LanguagesController < ApplicationController
  before_action :set_language, only: [:edit, :update, :destroy]

  def index
    @qualifications_languages = paginated_records_for Language
  end

  def new
    @qualifications_language = Language.new
  end

  def edit
  end

  def create
    @qualifications_language = Language.new(language_params)

    respond_to do |format|
      if @qualifications_language.save
        format.html { redirect_to qualifications_languages_path(pagination_params), notice: t("model.create", kind: "Language") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @qualifications_language.update(language_params)
        format.html { redirect_to qualifications_languages_path(pagination_params), notice: t("model.update", kind: "Language") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @qualifications_language.destroy
    respond_to do |format|
      format.html { redirect_to qualifications_languages_path(pagination_params), notice: t("model.destroy", kind: "Language") }
    end
  end

  private

  def set_language
    @qualifications_language = Language.find(params[:id])
  end

  def language_params
    params.require(:language).permit(:name)
  end

end
