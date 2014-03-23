class Qualifications::SkillsController < ApplicationController
  before_action :set_skill, only: [:edit, :update, :destroy]

  def index
    @skills = paginated_records_for Skill
  end

  def new
    @skill = Skill.new
  end

  def edit
  end

  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to qualifications_skills_path(pagination_params), notice: t("model.create", kind: "Skill") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to qualifications_skills_path(pagination_params), notice: t("model.update", kind: "Skill") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to qualifications_skills_path(pagination_params), notice: t("model.destroy", kind: "Skill") }
    end
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:name, :description)
  end

end
