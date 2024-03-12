if Supplier.count == 0
  suppliers = [
    { order: 1, name: "Apple"},
    { order: 2, name: "Samsung"},
    { order: 3, name: "Xiaomi"},
    { order: 4, name: "Realme"},
    { order: 5, name: "Oppo"},
    { order: 6, name: "Vivo"},
    { order: 7, name: "LG"},
  ]
  
  suppliers.each do |supplier|
    Supplier.create(
      order: supplier[:order],
      name: supplier[:name],
    )
  end
end
