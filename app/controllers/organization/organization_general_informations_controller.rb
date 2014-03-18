class Organization::OrganizationGeneralInformationsController < ApplicationController

  before_action :set_organization_general_information, only: [:edit, :update]

  def edit
    build_address_for @organization_general_information if @organization_general_information.address.blank?
  end

  def update
    respond_to do |format|
      if @organization_general_information.update(organization_general_information_params)
        flash.now[:notice] = t("model.update", kind: "Organization General Information")
      end
      format.html { render action: 'edit' }
    end
  end

  private

  def set_organization_general_information
    @organization_general_information = OrganizationGeneralInformation.first || OrganizationGeneralInformation.create
  end

  def organization_general_information_params
    params.
      require(:organization_general_information).
      permit(
          :name, :tax_id, :number_of_employees, :registration_number, :email,
          address_attributes: [
            :id, :address, :city, :state, :zip, :country, :phone, :fax, :notes
          ]
        )
  end

end
