class Qualifications::SkillsController < ApplicationController
  before_action :set_qualifications_skill, only: [:show, :edit, :update, :destroy]

  # GET /qualifications/skills
  # GET /qualifications/skills.json
  def index
    @qualifications_skills = Qualifications::Skill.all
  end

  # GET /qualifications/skills/1
  # GET /qualifications/skills/1.json
  def show
  end

  # GET /qualifications/skills/new
  def new
    @qualifications_skill = Qualifications::Skill.new
  end

  # GET /qualifications/skills/1/edit
  def edit
  end

  # POST /qualifications/skills
  # POST /qualifications/skills.json
  def create
    @qualifications_skill = Qualifications::Skill.new(qualifications_skill_params)

    respond_to do |format|
      if @qualifications_skill.save
        format.html { redirect_to @qualifications_skill, notice: 'Skill was successfully created.' }
        format.json { render action: 'show', status: :created, location: @qualifications_skill }
      else
        format.html { render action: 'new' }
        format.json { render json: @qualifications_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualifications/skills/1
  # PATCH/PUT /qualifications/skills/1.json
  def update
    respond_to do |format|
      if @qualifications_skill.update(qualifications_skill_params)
        format.html { redirect_to @qualifications_skill, notice: 'Skill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @qualifications_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualifications/skills/1
  # DELETE /qualifications/skills/1.json
  def destroy
    @qualifications_skill.destroy
    respond_to do |format|
      format.html { redirect_to qualifications_skills_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualifications_skill
      @qualifications_skill = Qualifications::Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualifications_skill_params
      params.require(:qualifications_skill).permit(:name, :description)
    end
end
