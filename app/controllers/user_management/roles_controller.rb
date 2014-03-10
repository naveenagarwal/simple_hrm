class UserManagement::RolesController < ApplicationController
  before_action :set_role, only: [:edit, :update, :destroy]

  # GET /user_management/roles
  # GET /user_management/roles.json
  def index
    @roles = Paginate.get_records(
      relation_object:  Role,
      page:             params[:page],
      per_page:         params[:per_page]
    )
  end

  # GET /user_management/roles/new
  def new
    @role = Role.new
  end

  # GET /user_management/roles/1/edit
  def edit
  end

  # POST /user_management/roles
  # POST /user_management/roles.json
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

  # PATCH/PUT /user_management/roles/1
  # PATCH/PUT /user_management/roles/1.json
  def update
    respond_to do |format|
      if @role.update(role_params)
        format.html { redirect_to user_management_roles_path(pagination_params), notice: t("model.update", kind: "Role") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /user_management/roles/1
  # DELETE /user_management/roles/1.json
  def destroy
    @role.destroy
    respond_to do |format|
      format.html { redirect_to user_management_roles_path(pagination_params), notice: t("model.destroy", kind: "Role") }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_params
      params.require(:role).permit(
          :name, :permissions
        )
    end
end
