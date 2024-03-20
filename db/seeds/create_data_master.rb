if Admin.count == 0
  Admin.create(
    email: 'admin@test.com',
    password: '12345678'
  )
end

if PaymentType.count == 0
  PaymentType.create(
    name: "Thanh toán tiền mặt",
  )
  PaymentType.create(
    name: "Chuyển khoản ngân hàng",
    bank_name: "Vietcombank",
    account_holders: "NGUYEN VIET HUNG",
    account_number: "1015545743",
  )
end
