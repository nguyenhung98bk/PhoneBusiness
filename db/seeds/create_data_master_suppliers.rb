if Supplier.count == 0
  suppliers = ["Apple", "Xiaomi", "Realme"]
  suppliers.each do |supplier|
    Supplier.create(
      name: supplier,
    )
  end
end
