class Qualifications::EducationsController < ApplicationController
  before_action :set_education, only: [:edit, :update, :destroy]

  def index
    @qualifications_educations = paginated_records_for Education
  end

  def new
    @qualifications_education = Education.new
  end

  def edit
  end

  def create
    @qualifications_education = Education.new(education_params)

    respond_to do |format|
      if @qualifications_education.save
        format.html { redirect_to qualifications_educations_path(pagination_params), notice: t("model.create", kind: "Education") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @qualifications_education.update(education_params)
        format.html { redirect_to qualifications_educations_path(pagination_params), notice: t("model.update", kind: "Education") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @qualifications_education.destroy
    respond_to do |format|
      format.html { redirect_to qualifications_educations_path(pagination_params), notice: t("model.destroy", kind: "Education") }
    end
  end

  private

  def set_education
    @qualifications_education = Education.find(params[:id])
  end

  def education_params
    params.require(:education).permit(:level)
  end

end
