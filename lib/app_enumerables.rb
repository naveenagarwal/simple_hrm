include EnumBase

module AppEnumerables

  enum :Entites do
    Admin "admin", 1, 1
    User "user", 2, 2
  end

  enum :Roles do
    HR "HR", 1, 1
    Accounts "Accounts", 2, 2
    Manager "Manager", 3, 3
    Supervisor "Supervisor", 4, 4
  end

  enum :MaritialStatus do
    Married "Married", 1, 1
    Unmarried "Unmarried", 2, 2
  end

  enum :Gender do
    Male "Male", 1, 1
    Female "Female", 2, 2
  end

  enum :SalaryComponentType do
    Earning "Earning", 1, 1
    Deduction "Deduction", 2, 2
  end

  enum :SalaryComponentOnlyCTC do
    Yes "Yes", true, 0
    No "No", false, 1
  end

  enum :SalaryComponentValueType do
    Amount "Amount", 1, 1
    Percentage "Percentage", 2, 2
  end

  enum :PublishTo do
    Admin "Admin", 1, 1
    Supervisor "Supervisor", 2, 2
    AllEmployees "All Employees", 3, 3
  end

  enum :EmailAuthenticationType do
    Plain :plain, 1, 1
    Login :login, 2, 2
    CramMD5 :cram_md5, 3, 3
  end

  enum :NotificationPeriod do
    DAY1 "1 Day", 1, 1
    DAYS2 "2 Days", 2, 2
    DAYS3 "3 Days", 3, 3
    MONTH1 "1 Month", 4, 4
    MONTHS2 "2 Months", 5, 5
    MONTHS3 "3 Months", 6, 6
    MONTHS4 "6 Months", 7, 7
  end

  enum :LDAPImplementation do
    OpenLDAP "OpenLDAP", 1, 1
    MSActiveDirectory "MS Active Directory", 2, 2
  end

  enum :LDAPProtocol do
    LDAP "LDAP", 1, 1
    LDAPS "LDAPS", 2, 2
  end

  enum :CustomFieldScreen do
    PersonalDetails "Personal Details", 1, 1
    ContactDetails  "Contact Details", 2, 2
    EmergencyContacts "Emergency Contacts", 3, 3
    Dependents "Dependents", 4, 4
    Immigration "Immigration", 5, 5
    Job "Job", 6, 6
    Salary "Salary", 7, 7
    TaxExemptions "Tax Exemptions", 8, 8
    ReportTo "Report To", 9, 9
    Qualifications "Qualifications", 10, 10
    Memberships "Memberships", 11, 11
  end

  enum :CustomFieldType do
    Text "Text", 1, 1
    Number "Number", 2, 2
    SelectOption "Drop Down", 3, 3
    Email "Email", 4, 4
  end

  enum :Months do
    January "January", 1, 1, { number_of_days: 31 }
    February "February", 2, 2, { number_of_days: 28 }
    March "March", 3, 3, { number_of_days: 31 }
    April "April", 4, 4, { number_of_days: 30 }
    May "May", 5, 5, { number_of_days: 31 }
    June "June", 6, 6, { number_of_days: 30 }
    July "July", 7, 7, { number_of_days: 31 }
    August "August", 8, 8, { number_of_days: 31 }
    September "September", 9, 9, { number_of_days: 30 }
    October "October", 10, 10, { number_of_days: 31 }
    November "November", 11, 11, { number_of_days: 30 }
    December "December", 12, 12, { number_of_days: 31 }
  end

  enum :WeekdaysInfo do
    FullDay "Full Day", 1, 1
    HalfDay "Half Day", 2, 2
    NonWorkingDay "Non-working Day", 3, 3
  end

  enum :HolidayType do
    FullDay "Full Day", 1, 1
    HalfDay "Half Day", 2, 2
  end

end