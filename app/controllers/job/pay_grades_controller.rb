class Job::PayGradesController < ApplicationController
  before_action :set_pay_grade, only: [:show, :edit, :update, :destroy]

  def index
    @pay_grades = Paginate.get_records(
        relation_object:  PayGrade.includes(:currency),
        page:             params[:page] || DEFAULT_PAGE,
        per_page:         params[:per_page] || DEFAULT_PER_PAGE
      )
  end

  def new
    @pay_grade = PayGrade.new
  end

  def edit
  end

  def create
    @pay_grade = PayGrade.new(pay_grade_params)

    respond_to do |format|
      if @pay_grade.save
        format.html { redirect_to job_pay_grades_path(pagination_params), notice: t("model.create", kind: "Pay Grade") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @pay_grade.update(pay_grade_params)
        format.html { redirect_to job_pay_grades_path(pagination_params), notice: t("model.update", kind: "Pay Grade") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @pay_grade.destroy
    respond_to do |format|
      format.html { redirect_to job_pay_grades_path(pagination_params), notice: t("model.destroy", kind: "Pay Grade") }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pay_grade
    @pay_grade = PayGrade.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pay_grade_params
    params.require(:pay_grade).permit(
        :name, :currency_id, :min_salary, :max_salary
      )
  end

end
