class Job::PayGradesController < ApplicationController
  before_action :set_pay_grade, only: [:show, :edit, :update, :destroy]

  def index
    @pay_grades = PayGrade.all
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
        format.html { redirect_to @pay_grade, notice: 'Pay grade was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @pay_grade.update(pay_grade_params)
        format.html { redirect_to @pay_grade, notice: 'Pay grade was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @pay_grade.destroy
    respond_to do |format|
      format.html { redirect_to pay_grades_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay_grade
      @pay_grade = PayGrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pay_grade_params
      params[:pay_grade]
    end
end
