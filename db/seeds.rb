# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding data. Please wait, it may take a while."
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

#Inserting currency
[
  "aed", "afn", "amd", "ang", "aoa", "ars", "aud", "awg", "azn", "bam", "bbd",
  "bdt", "bgn", "bhd", "bif", "bmd", "bnd", "bob", "brl", "btn", "bwp", "byr",
  "bzd", "cad", "cdf", "chf", "clf", "clp", "cny", "cop", "crc", "cuc", "cup",
  "cve", "czk", "djf", "dkk", "dop", "dzd", "egp", "ern", "etb", "eur", "fjd",
  "fkp", "gbp", "gel", "ghs", "gip", "gmd", "gnf", "gtq", "gyd", "hkd", "hnl",
  "hrk", "htg", "huf", "idr", "ils", "inr", "iqd", "irr", "isk", "jmd", "jod",
  "jpy", "kes", "kgs", "khr", "kmf", "kpw", "krw", "kwd", "kyd", "kzt", "lak",
  "lbp", "lkr", "lrd", "lsl", "ltl", "lvl", "lyd", "mad", "mdl", "mga", "mkd",
  "mmk", "mnt", "mop", "mro", "mur", "mvr", "mwk", "mxn", "myr", "mzn", "nad",
  "ngn", "nio", "nok", "npr", "nzd", "omr", "pab", "pen", "pgk", "php", "pkr",
  "pln", "pyg", "qar", "ron", "rsd", "rub", "rwf", "sar", "sbd", "scr", "sdg",
  "sek", "sgd", "shp", "skk", "sll", "sos", "srd", "ssp", "std", "svc", "syp",
  "szl", "thb", "tjs", "tmt", "tnd", "top", "try", "ttd", "twd", "tzs", "uah",
  "ugx", "usd", "uyu", "uzs", "vef", "vnd", "vuv", "wst", "xaf", "xag", "xau",
  "xcd", "xdr", "xof", "xpf", "yen", "yer", "zar", "zmk", "zmw", "zwd", "zwl",
  "zwn", "zwr", "eek", "ghc", "mtl", "tmm"
].each do |x|
    Currency.create(short_name: x.upcase)
end

organization_structure = OrganizationStructure.create(
    unit_id: "001",
    name: "Set the organization name here",
    description: "Set the organization description here"
  )

child = organization_structure.create_child_with({
    unit_id: "002",
    name: "Set the organization name here",
    description: "Set the organization description here"
  })

organization_structure.create_child_with({
    unit_id: "006",
    name: "Set the organization name here",
    description: "Set the organization description here"
  })

child.create_child_with({
    unit_id: "004",
    name: "Set the organization name here",
    description: "Set the organization description here"
  })

# Email subscriptions
[
  "Leave Applications",
  "Leave Assignments",
  "Leave Approvals",
  "Leave Cancellations",
  "Leave Rejections",
  "Performance Review Submissions"
].each { |name| EmailSubscription.create!(name: name) }

# Available Moudules
[
  { name: "Admin", enabled: true },
  { name: "PIM", enabled: true },
  { name: "Leave", enabled: false },
  { name: "Time", enabled: false },
  { name: "Recruitment", enabled: false },
  { name: "Performance", enabled: false }
].each { |available_module| AvailableModule.create!(available_module) }