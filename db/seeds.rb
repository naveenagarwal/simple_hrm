# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Admin
Admin.create!(
  email:    "admin@example.com",
  password: "admin@example.com"
)

# Create Roles
AppEnumerables::Roles.each do |role|
  Role.where(name: role.description).first_or_create
end

# Create User AuthenticationConfiguration
AuthenticationConfiguration.create!(
  status: true,
  reset_password: true,
  enable_recaptcha: true,
  attempts_to_enable_recaptcha: 3
)