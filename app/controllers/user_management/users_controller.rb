class UserManagement::UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    relation_object = RelationObject.scoped_relation_object(
                        scope_name: params[:scope],
                        klass: User
                      )

    @users = paginated_records_for relation_object
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_management_users_path(pagination_params), notice: t("model.create", kind: "User") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params_on_edit)
        format.html { redirect_to user_management_users_path(pagination_params), notice: t("model.update", kind: "User") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @user.disable
    respond_to do |format|
      format.html { redirect_to user_management_users_path(pagination_params), notice: t("model.destroy", kind: "User") }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.unscoped.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
        :username, :email, :password,
        :password_confirmation,
        :role_id
      )
    end

    def user_params_on_edit
      if YES == params[:update_password]
        user_params
      else
        params.require(:user).permit(
        :username, :email, :role_id
      )
      end
    end
end
