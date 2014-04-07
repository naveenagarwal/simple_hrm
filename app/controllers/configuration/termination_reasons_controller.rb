class Configuration::TerminationReasonsController < ApplicationController
  before_action :set_termination_reason, only: [:edit, :update, :destroy]

  def index
    @termination_reasons = paginated_records_for TerminationReason
  end

  def new
    @termination_reason = TerminationReason.new
  end

  def edit
  end

  def create
    @termination_reason = TerminationReason.new(termination_reason_params)

    respond_to do |format|
      if @termination_reason.save
        format.html { redirect_to configuration_termination_reasons_path(pagination_params), notice: t("model.create", kind: "Termination Reason") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @termination_reason.update(termination_reason_params)
        format.html { redirect_to configuration_termination_reasons_path(pagination_params), notice: t("model.update", kind: "Termination Reason") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @termination_reason.destroy
    respond_to do |format|
      format.html { redirect_to configuration_termination_reasons_path(pagination_params), notice: t("model.destroy", kind: "Termination Reason") }
    end
  end

  private

  def set_termination_reason
    @termination_reason = TerminationReason.find(params[:id])
  end

  def termination_reason_params
    params.require(:termination_reason).permit(:name)
  end

end
