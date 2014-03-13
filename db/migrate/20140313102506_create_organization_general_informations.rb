class CreateOrganizationGeneralInformations < ActiveRecord::Migration
  def change
    create_table :organization_general_informations do |t|
      t.string :name
      t.string :tax_id
      t.integer :number_of_employees
      t.string :registration_number
      t.string :email

      t.timestamps
    end
  end
end
