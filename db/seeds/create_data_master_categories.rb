if Category.count == 0
  categories = ["Điện thoại", "Tai nghe", "Máy tính bảng"]
  categories.each do |category|
    Category.create(
      name: category,
    )
  end
end
