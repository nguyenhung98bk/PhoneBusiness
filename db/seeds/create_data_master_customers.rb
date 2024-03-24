if Customer.count == 0
  for value in 1..50 do
    Customer.create(
      name: "Customer #{value}",
      email: "customer#{value}@test.com",
      phone: "0123456789",
      password: "12345678",
      status: "20",
    )
  end
end
