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
  Role.create(name: role.description)
end