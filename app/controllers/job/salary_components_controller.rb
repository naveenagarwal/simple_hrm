class Job::SalaryComponentsController < ApplicationController
  before_action :set_salary_component, only: [:show, :edit, :update, :destroy]

  def index
    @salary_components = Paginate.get_records(
        relation_object:  SalaryComponent,
        page:             params[:page] || DEFAULT_PAGE,
        per_page:         params[:per_page] || DEFAULT_PER_PAGE
      )
  end

  def new
    @salary_component = SalaryComponent.new
  end

  def edit
  end

  def create
    @salary_component = SalaryComponent.new(salary_component_params)

    respond_to do |format|
      if @salary_component.save
        format.html { redirect_to job_salary_components_path(pagination_params), notice: t("model.create", kind: "Salary Component") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @salary_component.update(salary_component_params)
        format.html { redirect_to job_salary_components_path(pagination_params), notice: t("model.update", kind: "Salary Component") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @salary_component.destroy
    respond_to do |format|
      format.html { redirect_to job_salary_components_path(pagination_params), notice: t("model.destroy", kind: "Salary Component") }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salary_component
      @salary_component = SalaryComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salary_component_params
      params.require(:salary_component).permit(
          :name, :component_type, :only_ctc, :value_type
        )
    end
end
