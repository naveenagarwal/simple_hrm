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

  enum :SalaryOnlyCTC do
    Yes "Yes", true, 0
    No "No", false, 1
  end

  enum :SalaryValueType do
    Amount "Amount", 1, 1
    Percentage "Percentage", 2, 2
  end

end