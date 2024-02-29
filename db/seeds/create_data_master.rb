if Admin.count == 0
  Admin.create(
    username: 'admin',
    password: '12345678'
  )
end
