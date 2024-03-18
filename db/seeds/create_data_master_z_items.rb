if Item.count == 0
  items = [
    { category_id: 1, supplier_id: 1, name: "iPhone 15 Pro Max 1TB", quantity: 100, purchase_price: 25000000, original_price: 47000000, price: 45000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 1, name: "iPhone 15 Pro Max 512GB", quantity: 100, purchase_price: 25000000, original_price: 41000000, price: 39000000, note: "iPhone 15 Pro Max 512GB là sự kết hợp hoàn hảo giữa dung lượng lưu trữ lớn, hiệu suất mạnh mẽ và màn hình xuất sắc. Điều này khiến giá iPhone 15 Pro Max cũng cao nhất trong series iPhone mới năm 2023. Cùng tìm hiểu ngay model Pro Max 512GB trong series điện thoại iPhone 15 có gì nổi bật đáng chú ý nhé"},
    { category_id: 1, supplier_id: 1, name: "iPhone 15 Pro Max 256GB", quantity: 100, purchase_price: 25000000, original_price: 35000000, price: 31000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 1, name: "iPhone 15 Pro 256GB", quantity: 100, purchase_price: 25000000, original_price: 32000000, price: 29000000, note: "iPhone 15 Pro 256GB là sự kết hợp hoàn hảo giữa thiết kế đẹp mắt, hiệu năng mạnh mẽ và camera hàng đầu. iPhone 15 Pro mang lại cho người dùng sự sang trọng từ thiết kế màu sắc. Nếu bạn là người yêu công nghệ và đam mê chụp ảnh, chiếc điện thoại này chắc chắn sẽ là một lựa chọn tuyệt vời."},
    { category_id: 1, supplier_id: 1, name: "iPhone 15 Plus 256GB", quantity: 100, purchase_price: 20000000, original_price: 29000000, price: 26000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 1, name: "iPhone 15 Pro 128GB", quantity: 100, purchase_price: 20000000, original_price: 29000000, price: 26000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 1, name: "iPhone 14 Pro Max 128GB", quantity: 100, purchase_price: 25000000, original_price: 30000000, price: 27000000, note: "iPhone 14 Pro Max sở hữu thiết kế màn hình Dynamic Island ấn tượng cùng màn hình OLED 6,7 inch hỗ trợ always-on display và hiệu năng vượt trội với chip A16 Bionic. Bên cạnh đó máy còn sở hữu nhiều nâng cấp về camera với cụm camera sau 48MP, camera trước 12MP dùng bộ nhớ RAM 6GB đa nhiệm vượt trội. Cùng phân tích chi tiết thông số siêu phẩm này ngay sau đây."},
    { category_id: 1, supplier_id: 1, name: "iPhone 14 128GB ", quantity: 100, purchase_price: 15000000, original_price: 23000000, price: 17000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 1, name: "iPhone 14 Pro 128GB", quantity: 100, purchase_price: 20000000, original_price: 28000000, price: 25000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 1, name: "iPhone 14 Plus 128GB", quantity: 100, purchase_price: 20000000, original_price: 28000000, price: 24000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy S24 Ultra 12GB 256GB", quantity: 100, purchase_price: 25000000, original_price: 34000000, price: 29000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy S23 Ultra 256GB", quantity: 100, purchase_price: 25000000, original_price: 32000000, price: 24000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy Z Flip5 512GB", quantity: 100, purchase_price: 25000000, original_price: 30000000, price: 17000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy Z Fold5 12GB 256GB", quantity: 100, purchase_price: 25000000, original_price: 41000000, price: 37000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy A15 LTE 8GB 128GB", quantity: 100, purchase_price: 2500000, original_price: 4500000, price: 4000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy S23 FE 5G 8GB 128GB", quantity: 100, purchase_price: 10000000, original_price: 15000000, price: 13000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy Z Fold5 12GB 512GB", quantity: 100, purchase_price: 25000000, original_price: 45000000, price: 37000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy A25 5G 6GB 128GB", quantity: 100, purchase_price: 25000000, original_price: 34000000, price: 29000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy S23 Ultra 12GB 512GB", quantity: 100, purchase_price: 25000000, original_price: 37000000, price: 29000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 2, name: "Samsung Galaxy Fold5 12GB 1TB", quantity: 100, purchase_price: 25000000, original_price: 52000000, price: 48000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi 13 8GB 256GB", quantity: 100, purchase_price: 7000000, original_price: 23000000, price: 17000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi 13T Pro 5G (12GB - 512GB)", quantity: 100, purchase_price: 7000000, original_price: 17000000, price: 15000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi Redmi Note 13 Pro Plus 5G 8GB 256GB", quantity: 100, purchase_price: 5000000, original_price: 11000000, price: 10000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi 13T 12GB 256GB", quantity: 100, purchase_price: 5000000, original_price: 13000000, price: 12000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi 13 Lite", quantity: 100, purchase_price: 5000000, original_price: 12000000, price: 9000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi POCO X6 Pro 5G 8GB 256GB", quantity: 100, purchase_price: 5000000, original_price: 10000000, price: 9000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi Redmi Note 12 Pro 5G", quantity: 100, purchase_price: 5000000, original_price: 10000000, price: 8000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi Redmi Note 11 Pro", quantity: 100, purchase_price: 4000000, original_price: 8000000, price: 6000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi Redmi 13C 6GB 128GB", quantity: 100, purchase_price: 2000000, original_price: 3500000, price: 3000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 3, name: "Xiaomi Redmi Note 11", quantity: 100, purchase_price: 3000000, original_price: 5000000, price: 4000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 4, name: "realme C55 (6GB - 128GB)", quantity: 100, purchase_price: 2000000, original_price: 5000000, price: 4000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 4, name: "realme 11 8GB 128GB", quantity: 100, purchase_price: 2000000, original_price: 7500000, price: 5500000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 4, name: "realme C51 6GB 256GB", quantity: 100, purchase_price: 2000000, original_price: 5500000, price: 4000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 4, name: "realme 11 Pro (8GB - 256GB)", quantity: 100, purchase_price: 5000000, original_price: 12000000, price: 10000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 4, name: "realme 9 Pro", quantity: 100, purchase_price: 2000000, original_price: 8000000, price: 4500000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 5, name: "OPPO Reno11 F 5G 8GB 256GB", quantity: 100, purchase_price: 7000000, original_price: 9000000, price: 9000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 5, name: "OPPO Reno10 5G 8GB 256GB", quantity: 100, purchase_price: 7000000, original_price: 10000000, price: 9000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 5, name: "OPPO A77s", quantity: 100, purchase_price: 3000000, original_price: 7000000, price: 5000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 5, name: "OPPO Find N3 16GB 512GB", quantity: 100, purchase_price: 25000000, original_price: 4500000, price: 41000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 5, name: "OPPO Find N3 Flip 12GB 256GB", quantity: 100, purchase_price: 5000000, original_price: 23000000, price: 23000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 5, name: "OPPO Reno10 5G 8GB 256GB", quantity: 100, purchase_price: 7000000, original_price: 11000000, price: 9000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 5, name: "OPPO Find N2 Flip", quantity: 100, purchase_price: 12000000, original_price: 20000000, price: 17000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 5, name: "OPPO Reno10 128GB", quantity: 100, purchase_price: 5000000, original_price: 10000000, price: 8500000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 6, name: "Vivo V27e 8GB 256GB", quantity: 100, purchase_price: 5000000, original_price: 9000000, price: 8000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 6, name: "vivo V29E 8GB 256GB", quantity: 100, purchase_price: 5000000, original_price: 9000000, price: 8000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 6, name: "vivo V25 Pro 8GB 128GB", quantity: 100, purchase_price: 5000000, original_price: 14000000, price: 7500000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 1, supplier_id: 6, name: "Vivo Y36 8GB 128GB", quantity: 100, purchase_price: 3000000, original_price: 5000000, price: 4000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 7, name: "Laptop LG Gram 2023 17Z90R-G.AH78A5", quantity: 100, purchase_price: 30000000, original_price: 51000000, price: 39000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 7, name: "Laptop LG Gram 2023 16Z90R-E.AH75A5", quantity: 100, purchase_price: 30000000, original_price: 50000000, price: 38000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 7, name: "Laptop LG Gram 2023 16Z90R-G.AH76A5", quantity: 100, purchase_price: 25000000, original_price: 47000000, price: 37000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 7, name: "Laptop LG Gram 2023 14Z90RS-G.AH54A5", quantity: 100, purchase_price: 25000000, original_price: 39000000, price: 30000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 7, name: "Laptop LG Gram 2021 14Z90P-G.AH75A5 14 inch", quantity: 100, purchase_price: 25000000, original_price: 41000000, price: 26000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 8, name: "Laptop Dell Inspiron 7506-5903SLV", quantity: 100, purchase_price: 15000000, original_price: 25000000, price: 18000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 8, name: "Laptop Dell Vostro 3520 Y4G15", quantity: 100, purchase_price: 15000000, original_price: 20000000, price: 18000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 8, name: "Laptop Dell Latitude 5330 27KJ4", quantity: 100, purchase_price: 15000000, original_price: 18000000, price: 17000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 8, name: "Laptop Dell Inspirion 15 3511 PDP3H", quantity: 100, purchase_price: 10000000, original_price: 15000000, price: 14000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 8, name: "Laptop Dell Inspiron 15 3520 YTC9K", quantity: 100, purchase_price: 10000000, original_price: 14000000, price: 12000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 9, name: "Macbook Pro 16 M3 Max 36GB - 1TB", quantity: 100, purchase_price: 80000000, original_price: 90000000, price: 88000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 9, name: "Macbook Pro 14 M3 Max 36GB - 1TB", quantity: 100, purchase_price: 70000000, original_price: 80000000, price: 80000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 9, name: "MacBook Pro 16 inch M2 Max 2023 (12 CPU - 38 GPU - 32GB - 1TB)", quantity: 100, purchase_price: 50000000, original_price: 93000000, price: 64000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 9, name: "Macbook Pro 14 inch M2 Max 2023 (12 CPU - 30 GPU - 32GB - 1TB)", quantity: 100, purchase_price: 50000000, original_price: 82000000, price: 62000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 9, name: "MacBook Air 15 inch M2 2023 16GB 512GB", quantity: 100, purchase_price: 30000000, original_price: 43000000, price: 41500000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 10, name: "Laptop HP Pavilion X360 14-EK1047TU 80R25PA", quantity: 100, purchase_price: 18000000, original_price: 27000000, price: 23000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 10, name: "Laptop HP Envy X360 BF0112TU 7C0N9PA", quantity: 100, purchase_price: 18000000, original_price: 30000000, price: 23000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 10, name: "Laptop HP Pavilion 15-EG3091TU 8C5L2PA", quantity: 100, purchase_price: 18000000, original_price: 26000000, price: 21000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 10, name: "Laptop HP Pavilion 15-EG2034TX 6K780PA", quantity: 100, purchase_price: 18000000, original_price: 23000000, price: 20000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 10, name: "Laptop HP Pavilion 15-EG2089TU 7C0R1PA", quantity: 100, purchase_price: 12000000, original_price: 22000000, price: 18000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 11, name: "Laptop Asus Rog Strix Scar 15 G533ZS-LN036W", quantity: 100, purchase_price: 42000000, original_price: 77000000, price: 59000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 11, name: "Laptop Asus ROG Flow X16 GV601VV-NL016W", quantity: 100, purchase_price: 42000000, original_price: 66000000, price: 53000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 11, name: "Laptop Asus ROG Strix G16 G614JU-N3777W", quantity: 100, purchase_price: 30000000, original_price: 44000000, price: 39000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 11, name: "Laptop Asus TUF Gaming A15 FA507XI-LP420W", quantity: 100, purchase_price: 25000000, original_price: 46000000, price: 34000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 11, name: "Laptop ASUS Zenbook 14 OLED UX3405MA-PP152W", quantity: 100, purchase_price: 25000000, original_price: 35000000, price: 33000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 12, name: "Laptop Lenovo LOQ 15IRX9 83DV000NVN", quantity: 100, purchase_price: 20000000, original_price: 32000000, price: 29000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 12, name: "Laptop Lenovo Thinkpad P14S G2 T 20VX008GVN", quantity: 100, purchase_price: 20000000, original_price: 36000000, price: 26000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 12, name: "Laptop Lenovo LOQ 15APH8 82XT00BTVN", quantity: 100, purchase_price: 20000000, original_price: 32000000, price: 29000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 2, supplier_id: 12, name: "Laptop Lenovo LOQ 15IRX9 83DV000NVN", quantity: 100, purchase_price: 20000000, original_price: 27000000, price: 23000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 3, supplier_id: 2, name: "Màn hình Samsung Gaming Odyssey NEO G9 G95NC LS57CG952 57 inch", quantity: 100, purchase_price: 50000000, original_price: 80000000, price: 60000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 3, supplier_id: 2, name: "Màn hình Samsung Odyssey OLED G9 LS49CG934 49 inch", quantity: 100, purchase_price: 25000000, original_price: 45000000, price: 32000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 3, supplier_id: 2, name: "Màn hình thông minh Samsung M8 LS32CM801UEXXV 32 inch", quantity: 100, purchase_price: 10000000, original_price: 17000000, price: 12000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 3, supplier_id: 8, name: "Màn hình Dell UltraSharp U2723QE 27 inch", quantity: 100, purchase_price: 10000000, original_price: 15000000, price: 13000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 3, supplier_id: 8, name: "Màn hình Dell S2721QS 27", quantity: 100, purchase_price: 5000000, original_price: 9000000, price: 8000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},
    { category_id: 4, supplier_id: 8, name: "Màn hình Dell S2721QS 27", quantity: 100, purchase_price: 5000000, original_price: 9000000, price: 8000000, note: "iPhone 15 Pro Max đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!"},

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
