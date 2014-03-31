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

end