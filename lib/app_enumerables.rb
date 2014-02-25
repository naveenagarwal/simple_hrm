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

end