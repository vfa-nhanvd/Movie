#! /usr/local/bin/ruby
# encoding: utf-8
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'
  # MySQL and PostgreSQL
   ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
  # SQLite
  # ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

User.create(:email => 'niick7@yahoo.com', :password => 'tsuunamii', :password_confirmation => 'tsuunamii', :role => "a")
User.create(:email => 'sura18com@yahoo.com', :password => '3M-keepitup', :password_confirmation => '3M-keepitup', :role => "a")
Country.create(:name => "Mỹ")
Country.create(:name => "Trung Quốc - Đài Loan")
Country.create(:name => "Hồng Kông")
Country.create(:name => "Việt Nam")
Country.create(:name => "Hàn Quốc")
Country.create(:name => "Nhật Bản")
Country.create(:name => "Âu Châu")
Country.create(:name => "Ấn Độ")
Country.create(:name => "Thái Lan")
Country.create(:name => "Khác")
Category.create(:name => "Hành Động")
Category.create(:name => "Võ Thuật")
Category.create(:name => "Phiêu Lưu")
Category.create(:name => "Hài Hước")
Category.create(:name => "Kinh Dị")
Category.create(:name => "Tình Cảm - Tâm Lý")
Category.create(:name => "Hình Sự")
Category.create(:name => "Hoạt Hình")
Category.create(:name => "Viễn Tưởng")
Category.create(:name => "Dã Sử - Cổ Trang")
Category.create(:name => "Chiến Tranh")
Artist.create(:name => "Trương Nghệ Mưu", :bio=> "...", :kind => "0")
Artist.create(:name => "Từ Khắc", :bio=> "...", :kind => "0")
Artist.create(:name => "Lục Xuyên", :bio=> "...", :kind => "0")
Artist.create(:name => "Châu Tinh Trì", :bio=> "...", :kind => "0")
Artist.create(:name => "Lý Nhân Cảng", :bio=> "...", :kind => "0")
Artist.create(:name => "Châu Tinh Trì", :bio=> "...", :kind => "1", :hot => true)
Artist.create(:name => "Chung Tử Đơn", :bio=> "...", :kind => "1", :hot => true)
Artist.create(:name => "Thành Long", :bio=> "...", :kind => "1")
Artist.create(:name => "Lý Liên Kiệt", :bio=> "...", :kind => "1")
Artist.create(:name => "Hồng Kim Bảo", :bio=> "...", :kind => "1")
Artist.create(:name => "Ngô Kinh", :bio=> "...", :kind => "1")
Artist.create(:name => "Triệu Văn Trác", :bio=> "...", :kind => "1")
Artist.create(:name => "Trương Bá Chi", :bio=> "...", :kind => "1")
Artist.create(:name => "Chung Gia Hân", :bio=> "...", :kind => "1")
Artist.create(:name => "Lý Nhược Đồng", :bio=> "...", :kind => "1")
Artist.create(:name => "Lưu Diệc Phi", :bio=> "...", :kind => "1")
Artist.create(:name => "Lưu Thi Thi", :bio=> "...", :kind => "1")
Artist.create(:name => "Âu Dương Chấn Hoa", :bio=> "...", :kind => "1")
Artist.create(:name => "Trần Cẩm Hồng", :bio=> "...", :kind => "1")
Artist.create(:name => "La Gia Lương", :bio=> "...", :kind => "1")
Artist.create(:name => "Quách Khả Doanh", :bio=> "...", :kind => "1")
Artist.create(:name => "Trần Tiểu Xuân", :bio=> "...", :kind => "1")
Artist.create(:name => "Lý Nhược Đồng", :bio=> "...", :kind => "1")
Artist.create(:name => "Lâm Tâm Như", :bio=> "...", :kind => "1")
Artist.create(:name => "Hoắc Kiến Hoa", :bio=> "...", :kind => "1")
Artist.create(:name => "Nghiêm Khoan", :bio=> "...", :kind => "1")
Artist.create(:name => "Dương Hựu Ninh", :bio=> "...", :kind => "1")
Artist.create(:name => "Hồng Tiểu Linh", :bio=> "...", :kind => "1")
Artist.create(:name => "Tô Hữu Bằng", :bio=> "...", :kind => "1")
Artist.create(:name => "Hà Nhuận Đông", :bio=> "...", :kind => "1")
Artist.create(:name => "Châu Tấn", :bio=> "...", :kind => "1")
Artist.create(:name => "Trần Khôn", :bio=> "...", :kind => "1")
Artist.create(:name => "Quế Luân Mỹ", :bio=> "...", :kind => "1")
Artist.create(:name => "Lý Vũ Xuân", :bio=> "...", :kind => "1")
Artist.create(:name => "Phạm Hiểu Huyên", :bio=> "...", :kind => "1")
Artist.create(:name => "Lưu Tùng Nhân", :bio=> "...", :kind => "1")
Artist.create(:name => "Diệp Hồng", :bio=> "...", :kind => "1")
Artist.create(:name => "Lâm Phong", :bio=> "...", :kind => "1")
Artist.create(:name => "Huỳnh Tông Trạch", :bio=> "...", :kind => "1")
Artist.create(:name => "Mã Tuấn Vỹ", :bio=> "...", :kind => "1")
Artist.create(:name => "Tạ Thiên Hoa", :bio=> "...", :kind => "1")
Artist.create(:name => "Dương Di", :bio=> "...", :kind => "1")
Artist.create(:name => "Tào Mẫn Lợi", :bio=> "...", :kind => "1")
Artist.create(:name => "Lâm Phong", :bio=> "...", :kind => "1")
Artist.create(:name => "Trần Đình Oai", :bio=> "...", :kind => "1")
Artist.create(:name => "Lưu Tích Hiền", :bio=> "...", :kind => "1")
Artist.create(:name => "Âu Cẩm Đường", :bio=> "...", :kind => "1")
Artist.create(:name => "Dương Cung Như", :bio=> "...", :kind => "1")
Artist.create(:name => "Thái Thiếu Phân", :bio=> "...", :kind => "1")
Artist.create(:name => "Lê Tư", :bio=> "...", :kind => "1")
Artist.create(:name => "Xa Thi Mạn", :bio=> "...", :kind => "1")
Artist.create(:name => "Trần Kiện Phong", :bio=> "...", :kind => "1")
Artist.create(:name => "Lưu Gia Linh", :bio=> "...", :kind => "1")
Artist.create(:name => "Tom Cruise", :bio=> "...", :kind => "1")
Artist.create(:name => "An Dĩ Hiên", :bio=> "...", :kind => "1")
Artist.create(:name => "Lữ Lương Vỹ", :bio=> "...", :kind => "1")
Artist.create(:name => "Lương Triều Vỹ", :bio=> "...", :kind => "1")
Artist.create(:name => "Viên Văn Khang", :bio=> "...", :kind => "1")
Artist.create(:name => "Triệu Vy", :bio=> "...", :kind => "1")
Artist.create(:name => "Huỳnh Dịch", :bio=> "...", :kind => "1")
Artist.create(:name => "Tạ Định Phong", :bio=> "...", :kind => "1")
Artist.create(:name => "Thái Trác Nghiên", :bio=> "...", :kind => "1")
Artist.create(:name => "Ngô Tôn", :bio=> "...", :kind => "1")
Artist.create(:name => "Huỳnh Hiểu Minh", :bio=> "...", :kind => "1")
Artist.create(:name => "Củng Lợi", :bio=> "...", :kind => "1")
Artist.create(:name => "Phạm Băng Băng", :bio=> "...", :kind => "1")
Artist.create(:name => "Phùng Thiệu Phong", :bio=> "...", :kind => "1")
Artist.create(:name => "Lê Minh", :bio=> "...", :kind => "1")
Artist.create(:name => "Trương Hàm Dư", :bio=> "...", :kind => "1")
Artist.create(:name => "Huỳnh Thư Sinh", :bio=> "...", :kind => "1")
Artist.create(:name => "An Chí Kiệt", :bio=> "...", :kind => "1")
Artist.create(:name => "Lưu Đức Hòa", :bio=> "...", :kind => "1")
Artist.create(:name => "Ngô Mẫn Đạt", :bio=> "...", :kind => "1")
Artist.create(:name => "Thư Kỳ", :bio=> "...", :kind => "1")
Artist.create(:name => "Mạc Văn Úy", :bio=> "...", :kind => "1")
Artist.create(:name => "Kim Thành Vũ", :bio=> "...", :kind => "1")
Artist.create(:name => "Hồ Ca", :bio=> "...", :kind => "1")
Artist.create(:name => "Nhậm Tuyền", :bio=> "...", :kind => "1")
Artist.create(:name => "Kim Sa", :bio=> "...", :kind => "1")