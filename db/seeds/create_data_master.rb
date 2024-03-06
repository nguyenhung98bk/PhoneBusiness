if Admin.count == 0
  Admin.create(
    email: 'admin@test.com',
    password: '12345678'
  )
end
