if Item.count == 0
  items = [
    { category_id: 1, supplier_id: 1, name: "iPhone 15 Pro Max 1TB", quantity: 100, purchase_price: 25000000, original_price: 35000000, price: 30000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
  ]
  
  items.each do |item|
    Item.create(
      category_id: item[:category_id],
      supplier_id: item[:supplier_id],
      name: item[:name],
      quantity: item[:quantity],
      purchase_price: item[:purchase_price],
      original_price: item[:original_price],
      price: item[:price],
      note: item[:note],
    )
  end
end
