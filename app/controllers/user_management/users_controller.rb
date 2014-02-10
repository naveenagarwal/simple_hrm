class UserManagement::UsersController < ApplicationController
  before_action :set_user_management_user, only: [:show, :edit, :update, :destroy]

  # GET /user_management/users
  # GET /user_management/users.json
  def index
    @user_management_users = Paginate.get_records(
      relation_object:  User,
      page:             params[:page] || DEFAULT_PAGE,
      per_page:         params[:per_page] || DEFAULT_PER_PAGE
    )
  end

  # GET /user_management/users/1
  # GET /user_management/users/1.json
  def show
  end

  # GET /user_management/users/new
  def new
    @user_management_user = User.new
  end

  # GET /user_management/users/1/edit
  def edit
  end

  # POST /user_management/users
  # POST /user_management/users.json
  def create
    @user_management_user = User.new(user_management_user_params)

    respond_to do |format|
      if @user_management_user.save
        format.html { redirect_to @user_management_user, notice: t "model.create", kind: "User" }
        format.json { render action: 'show', status: :created, location: @user_management_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_management_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_management/users/1
  # PATCH/PUT /user_management/users/1.json
  def update
    respond_to do |format|
      if @user_management_user.update(user_management_user_params)
        format.html { redirect_to @user_management_user, notice: t "model.update", kind: "User" }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_management_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_management/users/1
  # DELETE /user_management/users/1.json
  def destroy
    @user_management_user.destroy
    respond_to do |format|
      format.html { redirect_to user_management_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_management_user
      @user_management_user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_management_user_params
      params.require(:user).permit(
        :username, :email, :password,
        :password_confirmation
      )
    end
end
