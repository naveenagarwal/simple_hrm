class ProfilesController < ApplicationController
  def edit
    @profile = get_my_profile
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(profile_params)
      redirect_to edit_profile_path(current_entity), notice: t("model.update", kind: "Profile")
    else
      render :action => 'edit'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(
        :first_name, :last_name, :dob, :gender, :maritial_status
      )
  end

  def get_my_profile
    current_entity.profile || current_entity.create_profile
  end
end
