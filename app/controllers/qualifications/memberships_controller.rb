class Qualifications::MembershipsController < ApplicationController
  before_action :set_membership, only: [:edit, :update, :destroy]

  def index
    @qualifications_memberships = paginated_records_for Membership
  end

  def new
    @qualifications_membership = Membership.new
  end

  def edit
  end

  def create
    @qualifications_membership = Membership.new(membership_params)

    respond_to do |format|
      if @qualifications_membership.save
        format.html { redirect_to qualifications_memberships_path(pagination_params), notice: t("model.create", kind: "Membership") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @qualifications_membership.update(membership_params)
        format.html { redirect_to qualifications_memberships_path(pagination_params), notice: t("model.update", kind: "Membership") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @qualifications_membership.destroy
    respond_to do |format|
      format.html { redirect_to qualifications_memberships_path(pagination_params), notice: t("model.destroy", kind: "Membership") }
    end
  end

  private
    def set_membership
      @qualifications_membership = Membership.find(params[:id])
    end

    def membership_params
      params.require(:membership).permit(:name)
    end
end
