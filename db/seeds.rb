manager = Employee.create name: "ckn", password: "asd", manager: true
employee_1 = Employee.create name: "Mina Mumpitz", password: "aaa"
Employee.create name: "Nora Nunmal", password: "aaa"
Employee.create name: "Olaf Ofenrohr", password: "aaa"
Customer.create name: "Annelise Anfang"
Customer.create name: "Berta Bonze"
Customer.create name: "Crista Carlo"
Customer.create name: "Dörthe Donau"
Customer.create name: "Ermil Erdfred"

50.times do
  manager.duties.create(
    customer: Customer.find(rand(Customer.all.count).+1),
    date: DateTime.now.+(rand(60).-(30).days).+(rand(24).hours)
  )
end
