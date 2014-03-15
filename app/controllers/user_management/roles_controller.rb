class UserManagement::RolesController < ApplicationController
  before_action :set_role, only: [:edit, :update, :destroy]

  def index
    @roles = paginated_records_for Role
  end

  def new
    @role = Role.new
  end

  def edit
  end

  def create
    @role = Role.new(role_params)

    respond_to do |format|
      if @role.save
        format.html { redirect_to user_management_roles_path(pagination_params), notice: t("model.create", kind: "Role") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @role.update(role_params)
        format.html { redirect_to user_management_roles_path(pagination_params), notice: t("model.update", kind: "Role") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @role.destroy
    respond_to do |format|
      format.html { redirect_to user_management_roles_path(pagination_params), notice: t("model.destroy", kind: "Role") }
    end
  end

  private
    def set_role
      @role = Role.find(params[:id])
    end

    def role_params
      params.require(:role).permit(
          :name, :permissions
        )
    end
end
